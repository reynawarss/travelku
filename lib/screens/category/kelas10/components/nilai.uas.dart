import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas10/nilai_uas.dart';
import 'package:uasmobile/screens/category/kelas10/components/nilaiuascard.dart';

class NilaiUAS extends StatelessWidget {
  const NilaiUAS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuas.length,
      itemBuilder: (context, int key) {
        return NilaiUASCard(index: key);
      },
    ));
  }
}
