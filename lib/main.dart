import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
//import 'package:flutter_application_1/main_padge.dart';
//import 'package:flutter_application_1/main_padge.dart';
//import 'package:flutter_application_1/main_padge.dart';
//import 'package:flutter_application_1/screens/Auth.dart';
import 'package:flutter_application_1/screens/forgetpassword.dart';
import 'package:flutter_application_1/screens/long_in.dart';
import 'package:flutter_application_1/screens/signup.dart';
import 'package:flutter_application_1/screens/welcom.dart';

//import 'auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: welcom.id,
      routes: {
        welcom.id: (context) => welcom(),
        long_in.id: (context) => long_in(),
        signup.id: (context) => signup(),
        forgetpassword.id: (context) => forgetpassword(),
      },
    );
  }
}
