import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/screens/help.dart';
import 'package:flutter_application_1/screens/long_in.dart';

class account extends StatefulWidget {
  //const account({super.key});
  static const String id = "account";
  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  final user = FirebaseAuth.instance.currentUser;
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 240, 229),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                color: Color.fromARGB(255, 97, 63, 30),
                height: 150,
                child: Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      size: 150,
                      color: Color.fromARGB(255, 249, 240, 229),
                    ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "User Email : ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 249, 240, 229)),
                    ),
                    Text(
                      user!.email! as String,
                      style:
                          TextStyle(color: Color.fromARGB(255, 249, 240, 229)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        FirebaseAuth.instance
                            .authStateChanges()
                            .listen((User? user) {
                          if (user == null) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => long_in(),
                            ));
                          } else {
                            print('User is signed in!');
                          }
                        });
                      },
                      icon: Icon(Icons.logout),
                      color: Color.fromARGB(255, 249, 240, 229),
                    )
                  ],
                ),
              ),
            ),SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => help(),
                        ));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.help,color:Color.fromARGB(255, 97, 63, 30) ,size: 30,),
                          Text("Help",style: TextStyle(color: Color.fromARGB(255, 97, 63, 30),fontSize: 20),),
                          
                        ],
                      ) ,),
                      
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
