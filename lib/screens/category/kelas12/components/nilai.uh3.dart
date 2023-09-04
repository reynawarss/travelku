import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas 12/nilai_uh3.dart';
import 'package:uasmobile/screens/category/kelas12/components/nilaiuhcard3.dart';

class NilaiUH3 extends StatelessWidget {
  const NilaiUH3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: nilaiuh3.length,
      itemBuilder: (context, int key) {
        return NilaiUHCard3(index: key);
      },
    ));
  }
}
