import 'package:flutter/material.dart';

class WellComePage extends StatefulWidget {
  final int id;
  const WellComePage({Key? key, required this.id}) : super(key: key);

  @override
  State<WellComePage> createState() => _WellComePageState();
}

class _WellComePageState extends State<WellComePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WellCome Page"),),
      body: Container(
        child: Center(
          child: widget.id==1?Text("WellCome Admin Id",style: TextStyle(color: Colors.green,fontSize: 20),):
          Text("WellCome User Id",style: TextStyle(color: Colors.green,fontSize: 20),),
        ),
      ),
    );
  }
}


