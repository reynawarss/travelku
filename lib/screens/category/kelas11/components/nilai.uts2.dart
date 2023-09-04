import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas 11/nilai_uts2.dart';
import 'package:uasmobile/screens/category/kelas11/components/nilaiutscard2.dart';

class NilaiUTS2 extends StatelessWidget {
  const NilaiUTS2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuts2.length,
      itemBuilder: (context, int key) {
        return NilaiUTSCard2(index: key);
      },
    ));
  }
}
