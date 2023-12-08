import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  bool isOn = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50,),
            SwitchListTile(
              title: Text("Switch on To Play Music"),
                value: isOn, 
                onChanged: (value){}
            ),
          ],
        ),
      ),
    );
  }
}
