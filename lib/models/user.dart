class Users {
  final String uid;

  // initialdata
  Users get initial {
    return Users(uid: '');
  }

  // We are using 'Users' as the class name because 'User' is already taken by Firebase
  Users({required this.uid});
}
