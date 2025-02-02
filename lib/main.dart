import 'package:flutter/material.dart';
import 'package:we_chat/screens/auth/login_screen.dart';
import 'package:we_chat/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:we_chat/screens/splash_screen.dart';
import 'firebase_options.dart';

late Size mq;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Chat',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 22),
          backgroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

_initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
