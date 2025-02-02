import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:we_chat/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Positioned(
            top: mq.height * .15,
            right: mq.width * .25,
            width: mq.width * .5,
            child: Image.asset('images/icon.png'),
          ),
          Positioned(
              bottom: mq.height * .15,
              width: mq.width,
              child: Text(
                'STAY CONNECTED ANYTIME',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, color: Colors.black, letterSpacing: .5),
              )),
        ],
      ),
    );
  }
}
