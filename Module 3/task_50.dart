// Create an application to take input number from user and print its
// reverse number in TextField

import 'package:flutter/material.dart';

class ReversePrintPage extends StatefulWidget {
  const ReversePrintPage({Key? key}) : super(key: key);

  @override
  State<ReversePrintPage> createState() => _ReversePrintPageState();
}

class _ReversePrintPageState extends State<ReversePrintPage> {

  TextEditingController numberController = TextEditingController();
  TextEditingController resultController = TextEditingController();

  int reversedNumber = 0;
  String? gender; //no radio button will be selected on initial


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text("Enter the Value to Reverse Printing.",textAlign:TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
            SizedBox(height: 70,),
            TextFormField(
              controller: numberController,
              style: TextStyle(fontSize: 18,color: Colors.blueAccent.shade700,fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                label: Text("Reverse Printing"),
                prefixIcon: Icon(Icons.autorenew_rounded,color: Colors.white,size: 25,),
                hintText: "54321",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent.shade700,width: 5),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 220,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent
                ),
                onPressed: (){
                  if(numberController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating,
                        content: Text("Please Enter the Value...",style: TextStyle(color: Colors.white,fontSize: 18),),),
                    );
                  }else{
                    print(numberController.text);
                    reversePrinting(numberController.text);
                    resultController.text = reversedNumber.toString();
                    setState(() {});
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating,
                        content: Text(gender.toString(),style: TextStyle(color: Colors.white,fontSize: 18),),),
                    );
                  }

                },
                child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              readOnly: true,
              controller: resultController,
              style: TextStyle(fontSize: 18,color: Colors.blueAccent.shade700,fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                label: Text("Reverse Printing"),
                prefixIcon: Icon(Icons.autorenew_rounded,color: Colors.white,size: 25,),
                hintText: "Reverse Value ",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width:5,color: Colors.blueAccent.shade700,),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [

                RadioListTile(
                  title: Text("Male"),
                  value: "male",
                  groupValue: gender,
                  activeColor: Colors.blueAccent.shade700,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),

                RadioListTile(
                  title: Text("Female"),
                  value: "female",
                  groupValue: gender,
                  activeColor: Colors.blueAccent.shade700,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),

                RadioListTile(
                  title: Text("Other"),
                  value: "other",
                  groupValue: gender,
                  activeColor: Colors.blueAccent.shade700,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );


  }

  Future<int>reversePrinting(String value)async{
    String numberString = value.toString(); // Convert the number to a string
    int i = numberString.length - 1;
    reversedNumber = 0;
    while (i >= 0) {
      int digit = int.parse(numberString[i]); // Get the digit at the current position
      reversedNumber = reversedNumber * 10 + digit; // Build the reversed number
      i--;
    }

    return reversedNumber;

  }
}
