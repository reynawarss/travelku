import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas 11/nilai_uh2.dart';
import 'package:uasmobile/screens/category/kelas11/components/nilaiuhcard2.dart';

class NilaiUH2 extends StatelessWidget {
  const NilaiUH2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuh2.length,
      itemBuilder: (context, int key) {
        return NilaiUHcard2(index: key);
      },
    ));
  }
}
