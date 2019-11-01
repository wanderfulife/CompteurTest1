import 'package:alyce_controler_app/Screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alyce_controler_app/models/user.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

final user = Provider.of<User>(context);
print('user: ${user.uid}');

    //return either Home or Authenticate widget
    return Authenticate();
  }
}