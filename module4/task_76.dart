// 76. Create an Application to take input two numbers from users and
// when user press button then display sum of those values of next
// Activity.

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text("FirstPage",style: TextStyle(color: Colors.white),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 60,),
          Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextFormField(controller:value1Controller,
              keyboardType: TextInputType.number,
              labelText: "Enter Value",
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextFormField(controller:value2Controller,
              keyboardType: TextInputType.number,
              labelText: "Enter Value",
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
                int value1 = int.parse(value1Controller.text);
                int value2 =   int.parse(value2Controller.text);
                int sum =  value1 + value2;
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(total: sum,)));
              },
              child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),))

        ],
      ),
    );
  }

  Widget CustomTextFormField({required TextEditingController controller,Key? key,TextInputType? keyboardType,bool obscureText = false,
    String? labelText,TextStyle? labelStyle,TextStyle? hintStyle,String? hintText,Widget? suffixIcon,Widget? prefixIcon,bool enabled = true,
    EdgeInsetsGeometry? contentPadding,Function(String?)? onSaved,Function(String)? onFieldSubmitted,String? Function(String?)? validator}){
    return TextFormField(
      key:key,
      controller: controller,
      keyboardType:keyboardType,
      obscureText: obscureText,

      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        labelText: "  $labelText  ",
        labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
        hintText: "  $hintText  ",
        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 25),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue,width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue,width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue,width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.redAccent.withOpacity(0.2),width: 1.5),
        ),
      ),
      onSaved:onSaved,
      onFieldSubmitted:onFieldSubmitted,
      validator:validator,
    );
  }
}

class SecondPage extends StatefulWidget {
  final int total;
  const SecondPage({super.key, required this.total});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text("Answer Page",style: TextStyle(color: Colors.white),),),
      body:Center(child: Text("Answer : ${widget.total}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),);
  }
}





