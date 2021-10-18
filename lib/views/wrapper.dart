import 'package:flutter/material.dart';
import 'package:practice01/models/user.dart';
import 'package:practice01/views/authenticate/authenticate.dart';
import 'package:practice01/views/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    // print(user);

    if (user.uid == '') {
      return const Authenticate();
    } else {
      return const Home();
    }
    
  }
}
