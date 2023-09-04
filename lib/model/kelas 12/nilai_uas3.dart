import 'dart:ffi';

class NilaiUAS3 {
  final String name;
  final String kelas;
  final String nilai;
  final String image;


  NilaiUAS3(
      {required this.name,
      required this.kelas,
      required this.nilai,
      required this.image,
});
}

List nilaiuas3 = [
  NilaiUAS3(
      name: "Claudia Dwi Lestari",
      kelas: "XII IPA 1",
      nilai: "92",
      image: "assets/images/audii.jpg",
),
  NilaiUAS3(
      name: "Joel Realdy Simandalahi",
      kelas: "XII IPA 2",
      nilai: "95",
      image: "assets/images/joel.png",
),
  NilaiUAS3(
      name: "Bima Laroi Bafih",
      kelas: "XII IPS 1",
      nilai: "90",
      image: "assets/images/bima.jpg",
),
  NilaiUAS3(
      name: "Enggal Dharma Yudha",
      kelas: "XII IPS 2",
      nilai: "97",
      image: "assets/images/enggal.jpg",
),
  NilaiUAS3(
      name: "Basuki Prasetyo Wibowo",
      kelas: "XII IPS 3",
      nilai: "91",
      image: "assets/images/basuki.jpg",
),
];
