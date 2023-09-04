import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas 12/nilai_uts3.dart';
import 'package:uasmobile/screens/category/kelas12/components/nilaiutscard3.dart';

class NilaiUTS3 extends StatelessWidget {
  const NilaiUTS3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuts3.length,
      itemBuilder: (context, int key) {
        return NilaiUTSCard3(index: key);
      },
    ));
  }
}
