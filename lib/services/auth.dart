import 'package:alyce_controler_app/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
      }

Stream<User> get user {
  return _auth.onAuthStateChanged
  .map(_userFromFirebaseUser);
}
  // sign in anonymously

  Future signInAnon() async {
    try {
     AuthResult result = await _auth.signInAnonymously(); 
     FirebaseUser user = result.user;
     return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
}

// sign in with email & password
// register with email & password
//sign out