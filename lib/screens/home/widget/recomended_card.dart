import 'package:flutter/material.dart';
import 'package:uasmobile/model/home/galeri.dart';

import '../../../utilities/colors.dart';

class RecomendedCard extends StatelessWidget {
  final galeri;
  final VoidCallback press;
  const RecomendedCard({
    Key? key,
    required this.galeri,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 600,
          width: 200,
          decoration: BoxDecoration(
              color: kWhiteClr, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(galeri.image))),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  galeri.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
