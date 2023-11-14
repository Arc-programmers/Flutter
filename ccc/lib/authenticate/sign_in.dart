import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign in to Arc'),
      ),
        body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 110.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [ElevatedButton(
            child: const Text("Sign in Anonmously"),
            onPressed: ()async{}
          )
    ]
    )
        ),
    );
  }
}
