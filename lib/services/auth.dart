import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  Users _userFromFirebaseUser(User? user) {
    return Users(uid: user?.uid ?? "");
  }

  // auth change user stream
  Stream <Users> get user {
    return _auth.authStateChanges()
      .map(_userFromFirebaseUser);
      // .map((User user) => _userFromFirebaseUser(user));
  }

  // sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      // print(e.toString());
      return null;
    }
  }

  // sign in with email & password

  // register with email & password

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      // print(e.toString());
      return null;
    }
  }

}
