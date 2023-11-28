import 'package:flutter/material.dart';

import 'task_21_23.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page",style: TextStyle(fontSize: 25,color: Colors.white),),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                controller: userName,
                decoration: InputDecoration(
                  label: Text("Enter User Name"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onFieldSubmitted: (value){
                  userName.text = value.toString();
                },
                onSaved: (value){
                  userName.text = value.toString();
                },
                validator: (value){
                  if(value.toString().isEmpty){
                    return "Enter the User Name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Enter Email"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
                onFieldSubmitted: (value){
                  email.text = value;
                },
                onSaved: (value){
                  email.text = value.toString();
                },
                validator: (value){
                  if(value.toString().isEmpty){
                    return "Enter Email id";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.text,
                obscureText: isShow,
                decoration: InputDecoration(
                  label: Text("Enter Password"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.password,size: 25,),
                  suffixIcon: IconButton(onPressed: (){
                    isShow = !isShow;
                    setState(() {});
                  }, icon: Icon(isShow?Icons.remove_red_eye_outlined:Icons.remove_red_eye))
                ),
                onFieldSubmitted: (value){
                  password.text = value.toString();
                },
                onSaved: (value){
                  password.text = value.toString();
                },
                validator: (value){
                  if(value.toString().isEmpty){
                    return "Enter Password";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 150,
                height: 55,
                child: ElevatedButton(onPressed: (){
                  submit();
                  if(password.text.toString() == "12345"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
                  }else{
                    print("Password is wrong!!!");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Enter the Valid Password!!!",style: TextStyle(color: Colors.white),),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating,

                      )
                    );
                  }
                }, child: Text("Login",style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }

  void submit(){
    if(_formKey.currentState!.validate()){
      print("Data Processing...");
    }
  }
}

