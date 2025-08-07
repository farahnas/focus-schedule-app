import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class forgetpassword extends StatefulWidget {
  // const forgetpassword({super.key});
  static const String id = "forgetpassword";

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  final _auth = FirebaseAuth.instance;
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 249, 240, 229),

      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/imageedit_4_8688623914.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Reset Password!",
                        style: TextStyle(
                            color: Color.fromARGB(255, 97, 63, 30),
                            fontSize: 50,
                            fontFamily: 'Courgette-Regular'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Check your Email!",
                        style: TextStyle(
                            color: Color.fromARGB(255, 97, 63, 30),
                            fontSize: 50,
                            fontFamily: 'Courgette-Regular'),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        style:
                            TextStyle(color: Color.fromARGB(255, 97, 63, 30)),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.elliptical(32, 32),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 97, 63, 30),
                                    width: 2.0),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(32, 32))),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(
                                  255, 97, 63, 30), //<-- SEE HERE
                            ),
                            hintText: 'Enter Your Email',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 97, 63, 30))),
                      ),
                    ),
                    ElevatedButton(
                      child: const Text('Send requst'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(
                            255, 97, 63, 30), // Background color
                        onPrimary: Color.fromARGB(255, 249, 240,
                            229), // Text Color (Foreground color)
                      ),
                      onPressed: () {
                        _auth.sendPasswordResetEmail(email: email);
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
