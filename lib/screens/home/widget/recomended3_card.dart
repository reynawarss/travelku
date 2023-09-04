import 'package:flutter/material.dart';
import 'package:uasmobile/model/home/agenda.dart';

import '../../../utilities/colors.dart';

class Recomended3Card extends StatelessWidget {
  final Agenda agenda;
  final VoidCallback press;
  const Recomended3Card({
    Key? key,
    required this.agenda,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 200,
          width: 350,
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
                          fit: BoxFit.cover, image: AssetImage(agenda.image))),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  agenda.name,
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
