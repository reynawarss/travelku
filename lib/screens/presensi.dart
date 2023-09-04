import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uasmobile/editwidget.dart/edit_widget.dart';
import 'package:uasmobile/screens/database.mode.dart';
import 'package:uasmobile/screens/home/home_screen.dart';
import 'package:uasmobile/screens/firestoreservice.dart';
import 'firestoreservice.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Presensi extends StatefulWidget {
  const Presensi({Key? key}) : super(key: key);

  @override
  State<Presensi> createState() => _PresensiState();
}

class _PresensiState extends State<Presensi> {
  TextEditingController _namaTextController = new TextEditingController();
  TextEditingController _nimTextController = new TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   _namaTextController = TextEditingController();
  //   _noTextController = TextEditingController();
  // }

  // @override
  // void dispose() {
  //   _namaTextController.dispose();
  //   _noTextController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Stack(
        children: <Widget>[
          Container(
            height: 350,
            width: 800,
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 172, 150, 95),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70)))),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 100, 0, 0),
                child: Text(
                  "Presensi",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 200, 0, 0),
            child: Container(
                height: 280,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: _namaTextController,
                            decoration: InputDecoration(
                              labelText: "Nama",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Colors.brown)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                              controller: _nimTextController,
                              decoration: InputDecoration(
                                  labelText: "NIM",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color: Colors.brown)))),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red)),
                              child: Text('SUBMIT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {
                                FirestoreService.addDatabase(
                                  Database(
                                      name: _namaTextController.text,
                                      nim: _nimTextController.text),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}
