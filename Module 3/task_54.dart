import 'package:flutter/material.dart';

class FontSizePage extends StatefulWidget {
  const FontSizePage({super.key});

  @override
  State<FontSizePage> createState() => _FontSizePageState();
}

class _FontSizePageState extends State<FontSizePage> {
  var description = "Flutter is an open source framework developed and supported by Google. Frontend and full-stack developers use Flutter to build an application's user interface (UI) for multiple platforms with a single codebase.";
  double fontSize = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Font Size increase & decrease",style: TextStyle(color: Colors.white ),),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Text(description,style: TextStyle(fontSize:fontSize ),),
      ),
      floatingActionButton: Container(
        width: 130,
        height: 50,
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.blue,
        child: Row(
          children: [
            IconButton(onPressed: (){
              setState(() {
                fontSize +=1;
              });
            }, icon: Icon(Icons.add,color: Colors.white,)),
            Text(fontSize.toString(),style: TextStyle(color: Colors.white),),
            IconButton(onPressed: (){
              setState(() {
                fontSize -=1;
              });
            }, icon: Icon(Icons.remove,color: Colors.white))
          ],
        ),),
      ),
    );
  }
}
