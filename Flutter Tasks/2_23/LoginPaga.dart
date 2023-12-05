import 'package:flutter/material.dart';

import 'MenuPage.dart';

class LoginPage2 extends StatefulWidget{
  @override
  State createState() => LoginPage2State();

}

class LoginPage2State extends State<LoginPage2> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter Email Id",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onFieldSubmitted: (val){
                  emailController.text = val;
                },
                onSaved: (val){
                  emailController.text = val!;
                },
                validator: (val){
                  if(val.toString().isEmpty){
                    return "Enter Email Id";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onFieldSubmitted: (val){
                  passwordController.text = val;
                },
                onSaved: (val){
                  passwordController.text = val!;
                },
                validator: (val){
                  if(val.toString().isEmpty){
                    return "Enter Current Password";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                  loginNow(emailController.text, passwordController.text);
                },
                  child: Text("Login"),)
            ],
          ),
        ),
      ),
    );
  }

  void checkValidate(){
    if(myKey.currentState!.validate()){
      print("Data Loading...");
    }
  }

  void loginNow(String name,String password){
     checkValidate();
    if(name == "p@gmail.com" && password == "12345"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));

    }else{
      print("Enter email = flutter and Password = 12345 after Login.");
    }
    FocusScope.of(context).unfocus();
  }
}
