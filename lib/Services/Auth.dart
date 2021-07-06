import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_10th_socialmedia/model/user.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebase(FirebaseUser user){
    return user != null ? User(user.uid): null ;
  }

  Future signInWithEmailAndPass(String email, String pass) async {
    try {
      AuthResult authResult = await _auth.signInWithEmailAndPassword(email: email, password: pass);
      FirebaseUser firebaseUser = authResult.user;
      return _userFromFirebase(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailAndPass(String email, String pass) async {
    try {
      AuthResult authResult = await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      FirebaseUser firebaseUser = authResult.user;
      return _userFromFirebase(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signOut() async {
    try {
     return _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}
