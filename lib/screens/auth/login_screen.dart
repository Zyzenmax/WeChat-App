import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:we_chat/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Welcome to We Chat"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: mq.height * .10,
              left: mq.width * .25,
              width: mq.width * .5,
              child: Image.asset('images/icon.png')),
          Positioned(
              bottom: mq.height * .15,
              left: mq.width * .05,
              width: mq.width * .9,
              height: mq.height * .07,
              child: ElevatedButton.icon(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blue[300]),
                onPressed: () {},
                icon: Image.asset('images/google.png', height: mq.height * .03),
                label: const Text(
                  'Sign In with Google',
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
              ))
        ],
      ),
    );
  }
}
