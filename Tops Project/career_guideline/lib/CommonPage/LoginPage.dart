import 'dart:developer';
import 'package:careerguideline/Admin/Pages/AdminHomePage.dart';
import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/User/Pages/HomePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Widgets/ButtonWidgets.dart';
import '../Widgets/MyAppBar.dart';
import '../Widgets/MyDialogs.dart';
import '../Widgets/TextFormWidgets.dart';
import 'SignUpPage.dart';


class LoginPage extends StatefulWidget {
  final String isAdmin;
  const LoginPage({super.key, required this.isAdmin,});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ValueNotifier changeValue = ValueNotifier<int>(0);

  bool isPassword = true;

  void login()async{

    SharedPreferences loginData = await SharedPreferences.getInstance();
    widget.isAdmin == 'Admin'?
          loginData.setString('identify', 'Admin')
        : loginData.setString('identify', 'User');
    var identify = loginData.getString('identify') ?? '';
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if(email.isEmpty || password.isEmpty){
      ErrorDialog(context: context, title: 'please fill email and password!', sub1: 'OK', onPressed: ()=>Navigator.pop(context));
    }else{
      try{
        log('isAdmin =>  ${identify}');
        if(identify == 'Admin'){
          FirebaseFirestore.instance
              .collection('AdminAccountDataList')
              .where('email', isEqualTo: email)
              .where('password', isEqualTo: password)
              .get()
              .then((QuerySnapshot querySnapshot) {
            if (querySnapshot.docs.isNotEmpty) {
              String docId = querySnapshot.docs[0].id;
              print('docId $docId');
              loginData.setBool('login', false);
              loginData.setString('AdminID',docId);
              MyToastMSG(text: 'successfully login...', context: context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AdminHomePage(id:docId ,)),
              );
            }
            else {
              ErrorDialog(
                context: context,
                title: 'Invalid email & Password!',
                sub1: 'OK',
                onPressed: () => Navigator.pop(context),
              );
            }
          }).catchError((error) {
            print("Error getting documents: $error");
          });
        }
        else{
          FirebaseFirestore.instance
              .collection('UserAccountDataList')
              .where('email', isEqualTo: email)
              .where('password', isEqualTo: password)
              .get()
              .then((QuerySnapshot querySnapshot) {
            if (querySnapshot.docs.isNotEmpty) {
              String docId = querySnapshot.docs[0].id;
              print('docId $docId');
              MyToastMSG(text: 'successfully login...', context: context);
              loginData.setBool('login', false);
              loginData.setString('UserID',docId);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage(id:docId ,)),
              );
            }
            else {
              ErrorDialog(
                context: context,
                title: 'Invalid email & Password!',
                sub1: 'OK',
                onPressed: () => Navigator.pop(context),
              );
            }
          }).catchError((error) {
            print("Error getting documents: $error");
          });

        }

      }on FirebaseException catch(ex){
        log('FirebaseException : ${ex.code.toString()}');
        if( ex.code.toString() == 'invalid-credential'){
          ErrorDialog(context: context, title: 'invalid email & Password!', sub1: 'OK', onPressed: ()=>Navigator.pop(context));

        }else{
          ErrorDialog(context: context, title: ex.code.toString().replaceAll(RegExp('[-_]'), ' '), sub1: 'OK', onPressed: ()=>Navigator.pop(context));

        }
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(title: widget.isAdmin == 'Admin'?'Admin Login':'User Login',automaticallyImplyLeading: false,),
      body: ValueListenableBuilder(
        valueListenable: changeValue,
        builder: (context,value,child) {
          return Column(
            children: [
              SizedBox(height: 20,),
              Image.asset('assets/PagesImages/login.png',width: double.infinity,height:200,fit: BoxFit.cover,),
              MyTextForm(controller: emailController, hintText: 'Email'),
              MyTextForm(controller: passwordController, hintText: 'Password',obscureText: isPassword,
                suffixIcon: IconButton(onPressed: (){
                  isPassword = !isPassword;
                  changeValue.value++;
                }, icon: Icon(isPassword?Icons.visibility_outlined:Icons.visibility_off_outlined,color: pDark,))
              ),
              MyButton(onPressed: (){
                login();
              }, title: 'Login'),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: MyTextButton(title: 'create account | Signup', onPressed: ()=>
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(isAdmin: widget.isAdmin =='Admin'?true:false,)))),
              ),
            ],
          );
        }
      ),
    );
  }

}



