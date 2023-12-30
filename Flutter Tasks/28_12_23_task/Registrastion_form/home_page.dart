import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String fName;
  final String lName;
  final String email;
  final String gender;
  final String? hobbies1;
  final String? hobbies2;
  final String? hobbies3;
  final String? hobbies4;
  const HomePage({super.key, required this.fName, required this.lName, required this.email, required this.gender, this.hobbies1, this.hobbies2, this.hobbies3, this.hobbies4});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
