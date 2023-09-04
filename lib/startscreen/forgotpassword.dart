import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:uasmobile/editwidget.dart/edit_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _lupaTextController = TextEditingController();

  @override
  void dispose() {
    _lupaTextController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _lupaTextController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content:
                  Text('Password sudah dihapus? coba lihat email kamu rek!'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    final lupaTextController = TextEditingController();
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'Masukan email yang email dulu ya rek, nanti kamu dikasih link',
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        editTextField("Masukan Username", Icons.person_outline, false,
            _lupaTextController),
        SizedBox(
          height: 30,
        ),
        MaterialButton(
          onPressed: passwordReset,
          child: Text('Reset Password'),
          color: Colors.brown,
        ),
      ],
    ));
  }
}
