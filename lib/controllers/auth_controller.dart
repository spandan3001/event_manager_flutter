import 'package:event_manager/screen/home_screen.dart';
import 'package:event_manager/screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  //AuthController.intsance..
  static AuthController instance = Get.find();
  //email, password, name...
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    // ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const LoginScreen());
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About User",
        "User message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Account creation failed",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
  }

  void logOut() async {
    await auth.signOut();
  }

  void login(
      GlobalKey<FormState> formKey, String email, String password) async {
    if (formKey.currentState!.validate()) {
      try {
        await auth.signInWithEmailAndPassword(email: email, password: password);
        // Navigate to the home screen or do any other logic here
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.snackbar(
            "About Login",
            "Login message",
            backgroundColor: Colors.redAccent,
            snackPosition: SnackPosition.BOTTOM,
            titleText: const Text(
              'No user found for that email.',
              style: TextStyle(color: Colors.white),
            ),
            messageText: Text(
              e.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          );
        } else if (e.code == 'wrong-password') {
          Get.snackbar(
            "About Login",
            "Login message",
            backgroundColor: Colors.redAccent,
            snackPosition: SnackPosition.BOTTOM,
            titleText: const Text(
              'Wrong password provided for that user.',
              style: TextStyle(color: Colors.white),
            ),
            messageText: Text(
              e.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          );
        }
      }
    }
  }
}
