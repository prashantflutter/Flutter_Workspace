import 'package:firebase_setup/task/Registrastion_form/registrastion_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  static Color primColor =  Color(0xFF004AAD);
  static Color lightColor =  Color(0xFF5271FF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset("images/app_logo.png",width: 100,height: 100,),),
            SizedBox(height: 10,),
            Text("Thynk",style: TextStyle(color: primColor,fontSize: 22,fontWeight: FontWeight.bold),),
            Text("Unlimited",style: TextStyle(color: primColor,fontSize: 22,fontWeight: FontWeight.bold),),
            Text("Mobile Service",style: TextStyle(color:primColor,fontSize: 16,fontWeight: FontWeight.normal),),
            SizedBox(height: 60,),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightColor,
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Icon(Icons.login,color: Colors.white,size: 24.0,),
                  SizedBox(width: 40,),
                  Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: lightColor,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.app_registration,color: Colors.white,size: 24.0,),
                    SizedBox(width: 40,),
                    Text("SignUp",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
