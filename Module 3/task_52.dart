// 52. Create an application with radio buttons (Add, Substraction,
// Multiply, Division) EditText (number1, number2) and print result as
// per user choice from radio button in TextView

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class ArithmeticPage extends StatefulWidget {
  const ArithmeticPage({Key? key}) : super(key: key);

  @override
  State<ArithmeticPage> createState() => _ArithmeticPageState();
}

class _ArithmeticPageState extends State<ArithmeticPage> {

  String mainValue = "add";
  TextEditingController valueA = TextEditingController();
  TextEditingController valueB = TextEditingController();
   int a = 0,b = 0;
  // late int a,b;
  @override
  void initState() {
    super.initState();
    // a = int.parse(valueA.text.toString());
    // b = int.parse(valueB.text.toString());

  }

  @override
  Widget build(BuildContext context) {
    // int a = int.parse(valueA.text.toString());
    // int b = int.parse(valueB.text.toString());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text('Addition ,Subtraction',style: TextStyle(color: Colors.white,fontSize: 20),),
              Text('Multiply ,Division',style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 20,),
              SizedBox(
                width: 150,
                height: 55,
                child: TextField(
                  controller: valueA,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter first Value",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent.shade700,width: 5),
                      borderRadius: BorderRadius.circular(12),
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 150,
                height: 55,
                child: TextField(
                  controller: valueB,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter second Value",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent.shade700,width: 5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                GFRadio(value: "add", groupValue: mainValue,
                    onChanged: (value){
                  mainValue = value.toString();
                  setState(() {});
                }),
                  GFRadio(value: "sub", groupValue: mainValue,
                      onChanged: (value){
                        mainValue = value.toString();
                        setState(() {});
                      }),
                  GFRadio(value: "mul", groupValue: mainValue,
                      onChanged: (value){
                        mainValue = value.toString();
                        setState(() {});
                      }),
                  GFRadio(value: "div", groupValue: mainValue,
                      onChanged: (value){
                        mainValue = value.toString();
                        setState(() {});
                      }),
                ],
              ),
              SizedBox(height: 15,),
              GFButton(
                  onPressed: (){
                    calculateByValue();
                    a = int.parse(valueA.text);
                    b = int.parse(valueB.text);
                    setState(() {});
                  },
                child: Text("Submit"),

              ),
              SizedBox(height: 10,),
              mainValue == "add"?Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blueAccent.shade700),
                child: Text(" Answer is Value A and B is ${a+b}."),
              ):
              mainValue == "sub"?Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blueAccent.shade700),
                child: Text(" Answer is Value A and B is ${a-b}."),
              ):
              mainValue == "mul"?Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blueAccent.shade700),
                child: Text(" Answer is Value A and B is ${a*b}."),
              ):
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.blueAccent.shade700),
                child: Text(" Answer is Value A and B is ${a/b}."),
              ),

            ],
          ),
        ),
      ),
    );
  }

  calculateByValue(){
    // int a = int.parse(valueA.text);
    // int b = int.parse(valueB.text);

    switch(mainValue){
      case "add":
        print("${a + b}");
        break;
      case "sub":
        print("${a - b}");
        break;
      case "mul":
        print("${a * b}");
        break;
      case "div":
        print("${a / b}");
        break;
      default :
        print("Please Select any Option ");
        break;
    }
  }
}
