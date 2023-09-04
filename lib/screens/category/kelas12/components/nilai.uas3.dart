import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas 12/nilai_uas3.dart';
import 'package:uasmobile/screens/category/kelas12/components/nilaiuascard3.dart';

class NilaiUAS3 extends StatelessWidget {
  const NilaiUAS3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuas3.length,
      itemBuilder: (context, int key) {
        return NilaiUASCard3(index: key);
      },
    ));
  }
}
