import 'package:flutter/material.dart';
import 'package:uasmobile/screens/category/kelas12/components/nilai.uas3.dart';
import 'package:uasmobile/screens/category/kelas12/components/nilai.uh3.dart';
import 'package:uasmobile/screens/category/kelas12/components/nilai.uts3.dart';

class DetailKelas12 extends StatelessWidget {
  const DetailKelas12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: h * 0.3,
                width: w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/siswa.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(1.0),
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                ),
              ),
              Positioned(
                bottom: 90,
                left: 20,
                child: RichText(
                    text: TextSpan(
                  text: "Nilai Semester",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                )),
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -(h * 0.3 - h * 0.26)),
            child: Container(
              width: w,
              height: 650,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: <Widget>[
                      TabBar(
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: <Widget>[
                            Tab(
                              child: Text("UH"),
                            ),
                            Tab(
                              child: Text("UTS"),
                            ),
                            Tab(
                              child: Text("UAS"),
                            ),
                          ]),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: h * 0.6,
                        child: TabBarView(children: <Widget>[
                          NilaiUH3(),
                          NilaiUTS3(),
                          NilaiUAS3()
                        ]),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    )));
  }
}
