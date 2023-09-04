import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas10/nilai_uts.dart';
import 'package:uasmobile/screens/category/kelas10/components/nilaiutscard.dart';
import 'package:uasmobile/screens/category/kelas10/pages/detail.kelas10.dart';

class NilaiUTS extends StatelessWidget {
  const NilaiUTS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuts.length,
      itemBuilder: (context, int key) {
        return NilaiUTSCard(index: key);
      },
    ));
  }
}
