import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  bool isSwitchOn = false;
  final player = AudioPlayer();
  var textValue = 'Switch is OFF';

  String _audioPath = 'audios/Coldplay.mp3';

  void toggleSwitch(bool value) /*async*/ {
    if (isSwitchOn == false) {
      isSwitchOn = true;
      textValue = 'Switch Button is ON';
      player.play(AssetSource('audios/Coldplay.mp3'));
      setState(() {});
      player.play(AssetSource('audios/Coldplay.mp3'));
      print('Switch Button is ON');
    } else {
      player.stop();
      isSwitchOn = false;
      textValue = 'Switch Button is OFF';
      setState(() {});
      print('Switch Button is OFF');
    }
  }
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return  ShowDialog();
      },
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              // SwitchListTile(
              //     title: Text("Switch on To Play Music"),
              //     value: isOn,
              //     activeColor: Colors.blue,
              //     inactiveThumbColor: Colors.red,
              //     onChanged: (value)async{
              //       isOn = value;
              //
              //       print("value $value");
              //       if(isOn == true){
              //         await audioPlayer.pause();
              //       }else{
              //         await audioPlayer.play(_audioPath as Source,);
              //       }
              //       setState(() {});
              //     }
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Switch on To Play Music"),
                  Transform.scale(
                    scale: 1,
                    child: Switch(

                        value: isSwitchOn,
                        activeColor: Colors.blue,
                        inactiveThumbColor: Colors.red,
                        activeTrackColor: Colors.black12,
                        onChanged:toggleSwitch,
                   ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                isSwitchOn ? 'Music is playing' : 'Music is paused',
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                onPressed: () => AudioPlayer().play(AssetSource('audio/a.mp3')),
                child: Text('Play'),
              )
            ],
          ),
        ),
      ),
    );
  }
  
   ShowDialog()async{
   await showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(
       backgroundColor: Colors.blue.withOpacity(0.3),
       title: Text("Music App",style: TextStyle(color: Colors.white),),
       content: Text("Are Sure want to Exit App?",style: TextStyle(color: Colors.white)),
       // actionsAlignment: MainAxisAlignment.spaceAround,
       actions: [
         ElevatedButton(onPressed: (){
           exit(0);
         },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.withOpacity(0.5)), child: Text("Yes")),
         ElevatedButton(onPressed: (){
           Navigator.of(context).pop();
         },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.withOpacity(0.5)), child: Text("No"))
       ],
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(16),
       ),
     );
   });
  }
}

// class SwitchClass extends State {
//   bool isSwitched = false;
//   final player = AudioPlayer();
//   var textValue = 'Switch is OFF';
//
//   void toggleSwitch(bool value) /*async*/ {
//     if (isSwitched == false) {
//
//       setState(() {
//         isSwitched = true;
//         textValue = 'Switch Button is ON';
//         player.play(AssetSource('audio/a.mp3'));
//       });
//       player.play(AssetSource('audio/a.mp3'));
//       print('Switch Button is ON');
//     } else {
//       player.stop();
//       setState(() {
//         isSwitched = false;
//         textValue = 'Switch Button is OFF';
//       });
//       print('Switch Button is OFF');
//     }
//   }
//
//   @override Widget build(BuildContext context) {
//     return Column(mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Transform.scale(scale: 2,
//               child: Switch(
//                 onChanged: toggleSwitch,
//                 value: isSwitched,
//                 activeColor: Colors.blue,
//                 activeTrackColor: Colors.yellow,
//                 inactiveThumbColor: Colors.redAccent,
//                 inactiveTrackColor: Colors.orange,)),
//           Text('$textValue', style: const TextStyle(fontSize: 20),),
//
//           ElevatedButton(
//             onPressed: () => AudioPlayer().play(AssetSource('audio/a.mp3')),
//             child: Text('Play'),
//           )
//         ]);
//   }
// }