class NilaiUTS {
  final String name;
  final String kelas;
  final String nilai;
  final String image;


  NilaiUTS(
      {required this.name,
      required this.kelas,
      required this.nilai,
      required this.image,
});
}

List nilaiuts = [
  NilaiUTS(
      name: "Claudia Dwi Lestari",
      kelas: "X IPA 1",
      nilai: "75",
      image: "assets/images/audii.jpg",
),
  NilaiUTS(
      name: "Joel Realdy Simandalahi",
      kelas: "X IPA 2",
      nilai: "78",
      image: "assets/images/joel.png",
),
  NilaiUTS(
      name: "Bima Laroi Bafih",
      kelas: "X IPS 1",
      nilai: "75",
      image: "assets/images/bima.jpg",
),
  NilaiUTS(
      name: "Enggal Dharma Yudha",
      kelas: "X IPS 2",
      nilai: "77",
      image: "assets/images/enggal.jpg",
),
  NilaiUTS(
      name: "Basuki Prasetyo Wibowo",
      kelas: "X IPS 3",
      nilai: "80",
      image: "assets/images/basuki.jpg",
),
];
