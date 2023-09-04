import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uasmobile/screens/database.mode.dart';

class FirestoreService {
  static Future<void> addDatabase(Database database) async {
    await FirebaseFirestore.instance.collection('Presensi').add(database.isi());
  }
}
