import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/help.dart';
import 'Schedule.dart';
import 'account.dart';
import 'subject.dart';

class home extends StatefulWidget {
  // const home({super.key});
  static const String id = "home";

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 240, 229),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 220,
                width: 550,
                child: ElevatedButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Subject Information'),
                      Icon(
                        Icons.subject,
                        size: 150,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 97, 63, 30), // Background color
                    onPrimary: Color.fromARGB(
                        255, 249, 240, 229), // Text Color (Foreground color)
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => info())));
                  },
                ),
              ),
              SizedBox(
                height: 30,
                width: 50,
              ),
              SizedBox(
                height: 220,
                width: 550,
                child: ElevatedButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Schedule'),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.calendar_month,
                        size: 100,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 97, 63, 30), // Background color
                    onPrimary: Color.fromARGB(
                        255, 249, 240, 229), // Text Color (Foreground color)
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => schedule(daysoff: daysoff,))));
                  },
                ),
              ),
              SizedBox(
                height: 30,
                width: 50,
              ),
              SizedBox(
                height: 220,
                width: 550,
                child: ElevatedButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Profile'),
                      Icon(
                        Icons.person,
                        size: 100,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color.fromARGB(255, 97, 63, 30), // Background color
                    onPrimary: Color.fromARGB(
                        255, 249, 240, 229), // Text Color (Foreground color)
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => account())));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
