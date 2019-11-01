import 'package:alyce_controler_app/home/home.dart';
import 'package:alyce_controler_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final formKey = GlobalKey<FormState>();

  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          title: Text(
            'Identifiants',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
        body: Form(
          key: formKey,
          child: Column(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.redAccent),
              ),
              onSaved: (input) => _email = input,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.redAccent),
              ),
              onSaved: (input) => _password = input,
              obscureText: true,
            ),
            RaisedButton(
              color: Colors.redAccent,
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print('error');
                } else {
                  _submit();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  print('sign in');
                  print(result.uid);
                }
              },
            ),
          ]),
        ));
  }

  void _submit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      print('Email: $_email');
      print('Password: $_password');
    }
  }
}
