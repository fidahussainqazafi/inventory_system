import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../model/user_model.dart';

class FormController extends ChangeNotifier {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addUserData(BuildContext context, // Add this parameter
      String firstname,
      String lastname,
      String email,
      String phone,
      String password,
      String confirmpassword,
      ) async {
    try {
      // Create an instance of UserModel using the provided data
      final UserModel userModel = UserModel(
        firstname: firstname,
        lastname: lastname,
        email: email,
        phone: phone,
        password: password,
        confirmpassword: confirmpassword,
      );

      // Use the toMap() method to convert UserModel to a Map
      await firebaseFirestore.collection('users').add(userModel.toMap());
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
        ),
      );
    }
  }
}
