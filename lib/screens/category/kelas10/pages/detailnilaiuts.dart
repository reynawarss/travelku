import 'package:flutter/material.dart';
import 'package:uasmobile/model/kelas10/nilai_uts.dart';

class DetailNilaiUTS extends StatefulWidget {
  final int index;
  const DetailNilaiUTS({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailNilaiUTS> createState() => _DetailNilaiUTSState();
}

class _DetailNilaiUTSState extends State<DetailNilaiUTS> {
  bool _like = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: w,
        child: Stack(
          children: <Widget>[
            Container(
              height: h * 0.55,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(nilaiuts[widget.index].image),
                      fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.9),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              ),
            ),
            Container(
              width: w,
              margin: EdgeInsets.only(top: h * 0.5),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    nilaiuts[widget.index].name,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    width: w,
                    child: ListView.builder(
                      itemCount: nilaiuts[widget.index].rate,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, int key) {
                        return Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 34,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    nilaiuts[widget.index].desc,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        letterSpacing: 0.5,
                        wordSpacing: 1.5),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Harga",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            nilaiuts[widget.index].price,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: 30,
              top: h * 0.05,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_backspace,
                  size: 42,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 30,
              top: h * 0.47,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _like = !_like;
                  });
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ]),
                  child: Icon(
                    Icons.favorite,
                    size: 45,
                    color: (_like) ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
