import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String fullName, email, password, phoneNo;

  UserModel(
      {this.id,
      required this.fullName,
      required this.email,
      required this.password,
      required this.phoneNo});

  toJson() {
    return {
      'FullName': fullName,
      'Email': email,
      'Phone': phoneNo,
      'Password': password,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      fullName: data['FullName'],
      email: data['Email'],
      password: data['Password'],
      phoneNo: data['Phone'],
    );
  }
}
