
class NilaiUAS {
  final String name;
  final String kelas;
  final String nilai;
  final String image;


  NilaiUAS(
      {required this.name,
      required this.kelas,
      required this.nilai,
      required this.image,
});
}

List nilaiuas = [
  NilaiUAS(
      name: "Claudia Dwi Lestari",
      kelas: "X IPA 1",
      nilai: "88",
      image: "assets/images/audii.jpg",
),
  NilaiUAS(
      name: "Joel Realdy Simandalahi",
      kelas: "X IPA 2",
      nilai: "99",
      image: "assets/images/joel.png",
),
  NilaiUAS(
      name: "Bima Laroi Bafih",
      kelas: "X IPS 1",
      nilai: "84",
      image: "assets/images/bima.jpg",
),
  NilaiUAS(
      name: "Enggal Dharma Yudha",
      kelas: "X IPS 2",
      nilai: "82",
      image: "assets/images/enggal.jpg",
),
  NilaiUAS(
      name: "Basuki Prasetyo Wibowo",
      kelas: "X IPS 3",
      nilai: "89",
      image: "assets/images/basuki.jpg",
),
];
