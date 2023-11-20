// 51. Create an application to input 2 numbers from user and all numbers
// between those 2 numbers in next activity

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PassValuePage extends StatefulWidget {
  const PassValuePage({Key? key}) : super(key: key);

  @override
  State<PassValuePage> createState() => _PassValuePageState();
}

class _PassValuePageState extends State<PassValuePage> {

  TextEditingController value_one = TextEditingController();
  TextEditingController value_two = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value PassPage ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text("Enter Two Value One",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 50,),
          Container(
            width: 280,
            height: 60,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 3,
                color: Colors.blueAccent.shade700,
              ),
            ),
            child: TextField(
              controller: value_one,
              style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 18),
              decoration: InputDecoration(
                hintText: "Enter Eny Value",
                hintStyle: TextStyle(color: Colors.white,fontSize: 18,),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: 280,
            height: 60,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 3,
                color: Colors.blueAccent.shade700,
              ),
            ),
            child: TextField(
              controller: value_two,
              style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 18),
              decoration: InputDecoration(
                hintText: "Enter Eny Value Two",
                hintStyle: TextStyle(color: Colors.white,fontSize: 18,),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 150,
            height: 60,
            child: ElevatedButton(
                onPressed: (){
                  if(value_one.text.isNotEmpty && value_two.text.isNotEmpty){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        GetValuePage(value1: value_one.text, value2: value_two.text)));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please Fill the Value...",style: TextStyle(color: Colors.white,fontSize: 18),),

                        backgroundColor: Colors.redAccent,
                          behavior: SnackBarBehavior.floating,
                        ));
                  }

                },
                child: Text("Pass Value",style: TextStyle(color: Colors.white,fontSize: 18),)),
          )
        ],
      ),
      ),
    );
  }
}



class GetValuePage extends StatefulWidget {
  final String value1;
  final String value2;
  const GetValuePage({Key? key, required this.value1, required this.value2}) : super(key: key);

  @override
  State<GetValuePage> createState() => _GetValuePageState();
}

class _GetValuePageState extends State<GetValuePage> {

  var v1,v2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Value Page ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text("Get Value Set ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.blueAccent.shade700,
                  width: 5
                ),
              ),
                child: Text("First Value is ${widget.value1}",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
            SizedBox(height: 20,),
            Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.blueAccent.shade700,
                      width: 5
                  ),
                ),
                child: Text("Second Value is ${widget.value2}",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
            SizedBox(height: 20,),
          ],
        ),
      ),

    );
  }
}

