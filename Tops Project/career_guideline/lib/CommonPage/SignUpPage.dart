import 'dart:developer';
import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/CommonPage/LoginPage.dart';
import 'package:careerguideline/Widgets/MyDialogs.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Widgets/ButtonWidgets.dart';
import '../../Widgets/MyAppBar.dart';
import '../../Widgets/TextFormWidgets.dart';


class SignUpPage extends StatefulWidget {
  final bool isAdmin;
  const SignUpPage({super.key, required this.isAdmin});

  @override
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  ValueNotifier changeValue = ValueNotifier<int>(0);
   var identify;
  bool isPassword = true;
  bool isCPassword = true;
  String gender = 'Other';

  void signup(bool isAdmin)async{
    String genderValue = gender;
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cPassword = cPasswordController.text.trim();
    if(name.isEmpty || email.isEmpty || password.isEmpty || cPassword.isEmpty || genderValue == 'Other'){
      ErrorDialog(context: context, title: 'please fill all details!', sub1: 'OK', onPressed: ()=>Navigator.pop(context));
    }else if(password != cPassword){
      ErrorDialog(context: context, title: 'password are do not match!', sub1: 'OK', onPressed: ()=>Navigator.pop(context));
    }else {
      try {
         SharedPreferences loginData = await SharedPreferences.getInstance();
        Map<String, dynamic> accountData = {
          'name': name,
          'email': email,
          'gender': genderValue,
          'password':password,
        };
        log('isAdmin Signup : $isAdmin');
        if (isAdmin) {
            loginData.setBool('login', false);
            loginData.setString('uname', name);
            FirebaseFirestore.instance.collection('AdminAccountDataList').add(accountData);

            log('isAdmin == ${widget.isAdmin}');
            identify = loginData.getString('identify') ?? '';
            MyToastMSG(text: 'successfully signup...', context: context);
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => LoginPage(isAdmin: identify)));

        }
        else {
            loginData.setBool('login', false);
            loginData.setString('uname', name);
            FirebaseFirestore.instance.collection('UserAccountDataList').add(accountData);
            widget.isAdmin == true
                ? loginData.setString('identify', 'Admin')
                : loginData.setString('identify', 'User');
            log('isAdmin == ${widget.isAdmin}');
            identify = loginData.getString('identify') ?? '';
            MyToastMSG(text: 'successfully signup...', context: context);
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => LoginPage(isAdmin: identify)));
        }
      } on FirebaseException catch (ex) {
        ErrorDialog(context: context,
            title: ex.code.toString().replaceAll(RegExp('[-_]'), ' '),
            sub1: 'OK',
            onPressed: () => Navigator.pop(context));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        automaticallyImplyLeading: false,
        title: 'User Signup',),
      body: ValueListenableBuilder(
        valueListenable: changeValue,
        builder: (context,value,child) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image.asset('assets/PagesImages/signup.png',width: double.infinity,height:200,fit: BoxFit.cover,),
                  MyTextForm(controller: nameController, hintText: 'Name'),
                  MyTextForm(controller: emailController, hintText: 'Email'),
                  MyTextForm(controller: passwordController, hintText: 'Password',obscureText: isPassword,
                      suffixIcon: IconButton(onPressed: (){
                        isPassword = !isPassword;
                        changeValue.value++;
                      }, icon: Icon(isPassword?Icons.visibility_outlined:Icons.visibility_off_outlined,color: pDark,))
                  ),
                  MyTextForm(controller: cPasswordController, hintText: 'Confirm Password',obscureText: isCPassword,
                    suffixIcon: IconButton(onPressed: (){

                      setState(() {
                        isCPassword = !isCPassword;
                      });
                    }, icon: Icon(isCPassword?Icons.visibility_outlined:Icons.visibility_off_outlined,color: pDark,),),
                  ),
                  Row(
                    children: [
                      myTitle(data: 'Gender  : '),
                      MyRadio(title: 'Male', value: 'Male',
                          groupValue: gender, onChanged: (newValue){
                            gender = newValue!;
                            changeValue.value++;
                          }),
                      MyRadio(title: 'Female', value: 'Female',
                          groupValue: gender, onChanged: (newValue){
                            gender = newValue!;
                            changeValue.value++;
                          }),

                    ],
                  ),
                  MyButton(onPressed: (){
                    signup(widget.isAdmin);
                  }, title: 'Login'),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: MyTextButton(title: 'already account | login', onPressed: ()=>
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(isAdmin: widget.isAdmin?'Admin':'User',)))),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }

}
