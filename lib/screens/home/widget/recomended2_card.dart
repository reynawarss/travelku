import 'package:flutter/material.dart';
import 'package:uasmobile/model/home/kegiatan_wisata.dart';

import '../../../utilities/colors.dart';

class Recomended2Card extends StatelessWidget {
  final KegiatanSekolah kegiatansekolah;
  final VoidCallback press;
  const Recomended2Card({
    Key? key,
    required this.press,
    required this.kegiatansekolah,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
              color: kWhiteClr, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(kegiatansekolah.image))),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Center(
                  child: Text(
                    kegiatansekolah.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
