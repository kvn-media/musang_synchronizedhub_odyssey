import 'package:cloud_firestore/cloud_firestore.dart';

class DataRepo {
  Future<void> addData(Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection('').add(data);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getData() {
    return FirebaseFirestore.instance.collection('').snapshots();
  }
}
