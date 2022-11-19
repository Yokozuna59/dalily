import 'package:firebase_auth/firebase_auth.dart';

Future<bool> singin(String emailAddress, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);
    return true;
  } on FirebaseAuthException catch (e) {
    print(e.message);
    return false;
  }
}
