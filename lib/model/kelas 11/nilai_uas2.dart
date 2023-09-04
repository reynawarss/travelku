import 'dart:ffi';

class NilaiUAS2 {
  final String name;
  final String kelas;
  final String nilai;
  final String image;


  NilaiUAS2(
      {required this.name,
      required this.kelas,
      required this.nilai,
      required this.image,
});
}

List nilaiuas2 = [
  NilaiUAS2(
      name: "Claudia Dwi Lestari",
      kelas: "XI IPA 1",
      nilai: "93",
      image: "assets/images/audii.jpg",
),
  NilaiUAS2(
      name: "Joel Realdy Simandalahi",
      kelas: "XI IPA 2",
      nilai: "94",
      image: "assets/images/joel.png",
),
  NilaiUAS2(
      name: "Bima Laroi Bafih",
      kelas: "XI IPS 1",
      nilai: "97",
      image: "assets/images/bima.jpg",
),
  NilaiUAS2(
      name: "Enggal Dharma Yudha",
      kelas: "XI IPS 2",
      nilai: "93",
      image: "assets/images/enggal.jpg",
),
  NilaiUAS2(
      name: "Basuki Prasetyo Wibowo",
      kelas: "XI IPS 3",
      nilai: "98",
      image: "assets/images/basuki.jpg",
),
];
