import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lookinyou/homePage.dart';
import 'package:lookinyou/login.dart';
import 'package:lookinyou/register.dart';

class AuthService {
  // 1. handleAuthState()

  // 2. signInWithGoogle()

  // 3. signOut()

  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return homePage();
        } else {
          return register();
        }
      },
    );
  }

  void signInWithGoogle() {}

  static void signOut() {}
}

signInWithGoogle() async {
  //trigger the authentication flow
  final GoogleSignInAccount? googleUser =
      await GoogleSignIn(scopes: <String>["email"]).signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;

  // Create a new credential
  final Credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  return await FirebaseAuth.instance.signInWithCredential(Credential);
}

signOut() {
  FirebaseAuth.instance.signOut();
}
