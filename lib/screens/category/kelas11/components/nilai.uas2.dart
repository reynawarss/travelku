import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas 11/nilai_uas2.dart';
import 'package:uasmobile/screens/category/kelas11/components/nilaiuascard2.dart';

class NilaiUAS2 extends StatelessWidget {
  const NilaiUAS2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuas2.length,
      itemBuilder: (context, int key) {
        return NilaiUASCard2(index: key);
      },
    ));
  }
}
