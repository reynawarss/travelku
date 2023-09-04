import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas10/nilai_uh.dart';
import 'package:uasmobile/screens/category/kelas10/components/nilaiuhcard.dart';

class NilaiUH extends StatelessWidget {
  const NilaiUH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuh.length,
      itemBuilder: (context, int key) {
        return NilaiUHCard(index: key);
      },
    ));
  }
}
