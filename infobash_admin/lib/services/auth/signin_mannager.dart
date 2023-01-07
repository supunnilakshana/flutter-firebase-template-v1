import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../constants/initdata.dart';

class SigninManager extends ChangeNotifier {
  Future<int> signIn(String email, String password) async {
    int res = resfail;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      res = resok;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        res = resfail;
        //print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        res = resfail;
        //print('Wrong password provided for that user.');
      }
    }
    notifyListeners();
    return res;
  }

  Future<int> signUp(String em, String pw) async {
    int res = resfail;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: em, password: pw);
      res = resok;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        res = resfail;
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        res = resfail;
        print('The account already exists for that email.');
      }
    } catch (e) {
      res = resfail;
      print(e);
    }

    notifyListeners();
    return res;
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<int> resetPassword({required String email}) async {
    int r = 0;
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: email)
        .then((value) => r = 1)
        .catchError((e) => r = 0);

    print(r);
    return r;
  }
}
