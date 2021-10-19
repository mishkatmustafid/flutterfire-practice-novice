class Users {
  final String uid;

  // We are using 'Users' as the class name because 'User' is already taken by Firebase
  Users({required this.uid});
}

class UserData {
  final String uid;
  final String name;
  final String sugars;
  final int strength;

  UserData({required this.uid, required this.name, required this.sugars, required this.strength});
}
