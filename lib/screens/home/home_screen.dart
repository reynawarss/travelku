import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uasmobile/model/home/agenda.dart';
import 'package:uasmobile/model/home/kegiatan_wisata.dart';
import 'package:uasmobile/model/home/galeri.dart';
import 'package:uasmobile/screens/presensi.dart';
import 'package:uasmobile/screens/home/detailscreen/detail.screen.dart';
import 'package:uasmobile/screens/home/detailscreen/detail2.screen.dart';
import 'package:uasmobile/screens/home/widget/recomended2_card.dart';
import 'package:uasmobile/screens/home/widget/recomended_card.dart';
import 'package:uasmobile/screens/home/widget/recomended3_card.dart';
import 'package:uasmobile/screens/category/kelas10/pages/detail.kelas10.dart';
import 'package:uasmobile/screens/category/kelas11/pages/detail.kelas11.dart';
import 'package:uasmobile/screens/category/kelas12/pages/detail.kelas12.dart';
import 'package:uasmobile/screens/home/detailscreen/detail3.screen.dart';
import 'package:uasmobile/screens/presensi.dart';
import 'package:uasmobile/startscreen/signin.dart';
import 'package:uasmobile/utilities/colors.dart';

import 'widget/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kWhiteClr,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            // app bar
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(' Travelku.Apps',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromARGB(255, 206, 199, 4),
                          )),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '' + user.email!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue)),
                    child: Text('Hot News',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Presensi()));
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)),
                    child: Text('Logout',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                  ),
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            // category
            const SizedBox(
              height: 30,
            ),

            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 181, 151),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 40,
                width: 1050,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Tema Wisata",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              height: 75,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: <Widget>[
                      CategoryCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailKelas10()));
                        },
                        image: "assets/images/bromo.jpg",
                        title: "Gunung",
                      ),
                      CategoryCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailKelas11()));
                        },
                        image: "assets/images/pantai.jpg",
                        title: "Pantai",
                      ),
                      CategoryCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailKelas12()));
                        },
                        image: "assets/images/forest.jpg",
                        title: "Hutan",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // recomended
            const SizedBox(
              height: 20,
            ),

            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 181, 151),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 40,
                width: 1050,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Detail Wisata",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            Container(
                height: 310,
                child: ListView.builder(
                    itemCount: library.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            RecomendedCard(
                              galeri: library[index],
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            galeri: library[index])));
                              },
                            )
                          ],
                        ),
                      );
                    })),

            const SizedBox(
              height: 15,
            ),

            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 181, 151),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 40,
                width: 1050,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Kegiatan Wisata",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            Container(
                height: 195,
                child: ListView.builder(
                    itemCount: school.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Recomended2Card(
                                kegiatansekolah: school[index],
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Detail2Screen(
                                                kegiatansekolah: school[index],
                                              )));
                                })
                          ],
                        ),
                      );
                    })),

            const SizedBox(
              height: 15,
            ),

            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 181, 151),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 40,
                width: 1050,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "History",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: 200,
                child: ListView.builder(
                    itemCount: attention.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Recomended3Card(
                                agenda: attention[index],
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Detail3Screen(
                                              agenda: attention[index])));
                                })
                          ],
                        ),
                      );
                    })),
          ]),
        ),
      )),
    );
  }
}
