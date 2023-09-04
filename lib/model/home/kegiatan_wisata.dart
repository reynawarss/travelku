class KegiatanSekolah {
  final String image, name, desc;

  KegiatanSekolah({
    required this.desc,
    required this.name,
    required this.image,
  });
}

List school = [
  KegiatanSekolah(
      image: 'assets/images/perkemahan.png',
      name: 'Perkemahan',
      desc: "Kegiatan perkemahan diikuti oleh seluruh angkatan Kelas X dan perkemahan kali ini dilaksankan di Bedengan, Jawa Timur."),
  KegiatanSekolah(
      image: 'assets/images/go green.png',
      name: 'Go Green',
      desc:   "Kita bisa menanam pohon disekitaran lingkungan sekolah. Manfaatnya adalah kita belajar menyayangi alam, dan udara sekitar akan lebih segar."),
  KegiatanSekolah(
      image: 'assets/images/market day.jpg',
      name: 'Market Day',
      desc: "Market Day ini merupakan program kerja OSIS yang diadakan dengan tujuan agar siswa dan siswi dapat termotivasi serta belajar untuk berwirausaha."),
  KegiatanSekolah(
      image: 'assets/images/literasi.png',
      name: 'Literasi',
      desc: "Program Literasi ini diadakan supaya meminimalisir terjadinya krisis literasi yang dialami oleh siswa dan siswi. Selain itu juga, Literasi ini dilakukan agar siswa dan siswi dapat menjadikan kegiatan membaca ini menjadi sebuah kebiasaan yang baik."),
];
