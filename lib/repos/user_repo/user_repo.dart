import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/features/authentication/models/user_model.dart';

class UserRepo extends GetxController {
  static UserRepo get instance => Get.find();

  final db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
   await db.collection('Users').add(user.toJson())
        .whenComplete(
          () => Get.snackbar('Success', 'Your account has been created.',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
        )
        .catchError((error, stackTrace) {
      Get.snackbar('Error', 'Something went wrong, Try again.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      print(error.toString());
    });

  }

  // fetch all users ot user details
  Future<UserModel> getUserDetails(String email)async{
    final snapshot = await db.collection('Users').where('Email',isEqualTo: email).get();
    final userDate = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userDate;
  }

  Future<List<UserModel>> allUsers()async{
    final snapshot = await db.collection('Users').get();
    final userDate = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userDate;
  }

  Future<void> updateUserRecord(UserModel user) async{
    await db.collection('Users').doc(user.id).update(user.toJson());
  }

  }
