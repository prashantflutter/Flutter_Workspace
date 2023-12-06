import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/task_21_23/5_23/wellcome_page.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({Key? key}) : super(key: key);

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {

  final myKey = GlobalKey<FormState>();
  var adminController = TextEditingController();
  var passwordController = TextEditingController();
  var admin,password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Admin Side Page"),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: Form(
          key: myKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              TextFormField(
                controller: adminController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter Admin Id",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: Icon(Icons.person,color: Colors.blue,)
                ),
                onFieldSubmitted: (val){
                  admin = val.toString();
                },
                onSaved: (val){
                  admin = val.toString();
                },
                validator: (val){
                  if(val.toString().isEmpty){
                    return "Enter Admin Id";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Enter Admin Id",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: Icon(Icons.password,color: Colors.blue,)
                ),
                onFieldSubmitted: (val){
                  admin = val.toString();
                  setState(() {

                  });
                },
                onSaved: (val){
                  admin = val.toString();
                  setState(() {

                  });
                },
                validator: (val){
                  if(val.toString().isEmpty){
                    return "Enter Admin Id";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                print(password);
                if(passwordController.text == "12345"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>WellComePage(id: 1)));
                  Fluttertoast.showToast(
                      gravity: ToastGravity.CENTER,
                      toastLength: Toast.LENGTH_SHORT,
                      webBgColor:"linear-gradient(to right, #dc1c13, #dc1c13)",
                      msg: "Successfully Login...");
                }else{
                  Fluttertoast.showToast(
                      gravity: ToastGravity.CENTER,
                      toastLength: Toast.LENGTH_SHORT,
                      // webBgColor:"linear-gradient(to right, #dc1c13, #dc1c13)",
                      msg: "Enter the Current Password");
                  print('Enter the Password = 12345');
                }
              }, child: Text("Login"))

            ],
          ),
        ),
      ),
    );

  }

  void submit(){
    if(myKey.currentState!.validate()){
      print("Loading Data...");
    }
  }
}
