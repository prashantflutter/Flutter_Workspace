
import 'package:flutter/material.dart';

import 'registration_Page.dart';
import 'wellCome_Page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final myKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.2),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20,),
        child: SingleChildScrollView(
          child: Form(
            key: myKey,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Text("Login Now!",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: "Email-Id",
                      labelStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white,width: 2),
                      ),
                      enabled: true,
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white,width: 2),
                      ),
                    ),
                    onFieldSubmitted: (value){
                      emailController.text = value;
                    },
                    onSaved: (value){
                      emailController.text = value!;
                    },
                    validator: (value){
                      if(value.toString().isEmpty){
                        return "Enter Email";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white,width: 2),
                      ),
                      enabled: true,
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.white,width: 2),
                      ),
                    ),
                    onFieldSubmitted: (value){
                      passwordController.text = value;
                    },
                    onSaved: (value){
                      passwordController.text = value!;
                    },
                    validator: (value){
                      if(value.toString().isEmpty){
                        return "Enter Password";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: 150,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){
                      checkFillData();
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Login",style: TextStyle(color: Colors.grey,fontSize: 18),),),
                ),
                SizedBox(height: 20,),
                Container(
                  color: Colors.white,
                  width: 250,
                  height: 2,
                ),
                SizedBox(height: 10,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                    },
                    child: Text("new user registration!",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),)),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void checkFillData(){
    // if(myKey.currentState!.validate()){
    //   print("Data Processing...");
    // }else
    if(emailController.text.isEmpty || passwordController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Fill Email Id && Password!!!",style: TextStyle(color: Colors.grey,fontSize: 14),),
          backgroundColor: Colors.white,
          behavior: SnackBarBehavior.floating,),);
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => WellComePage()));
    }
  }
}