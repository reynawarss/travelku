class Database {
  String name;
  String nim;

  Database({
    required this.name,
    required this.nim,
  });

  Map<String, dynamic> isi() {
  return {
    'nama': name,
    'no nim': nim
  };
}
}