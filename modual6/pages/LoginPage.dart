import 'dart:async';

import 'package:flutter/material.dart';

import '../AppConstant/appColors.dart';
import '../widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height*0.1,),
            Icon(Icons.chat,size: size.height*0.14,color: primeColor,),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text('Chatter',style: TextStyle(color: primeColor,fontSize: 28,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: size.height*0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
              child: CustomTextField(
                  controller: emailController, 
                  hintText: 'Email',
                  prefixIcon: Padding(padding:  EdgeInsets.only(left: 15),
                  child: Icon(Icons.email,color: primeColor,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8),
              child: CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  prefixIcon: Padding(padding:  EdgeInsets.only(left: 15),
                  child: Icon(Icons.lock,color: primeColor,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomButton(onPressed: (){
                validationCheck();
              },text: 'LOGIN'),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 10),
              child: Text('or create an account',style: TextStyle(color: primeColor,fontSize: 16,fontWeight: FontWeight.normal),),
            ),
            SizedBox(height: size.height*0.1,),
            Text('Made with \u{1F49F} by prashantdeveloper',style: TextStyle(color: primeColor,fontSize: 16,fontWeight: FontWeight.normal),),
          ],
        ),
      ),
    );
  }

  void validationCheck(){
    if(emailController.text.isEmpty || passwordController.text.isEmpty){
      setState(() {
        // Timer(Duration(seconds: 2,),(){
        //   showModalBottomSheet(context: context, builder: (context){
        //     return Container(
        //       width: double.infinity,
        //       height: 120,
        //       color: primeColor,
        //       child: Row(
        //         children: [
        //           SizedBox(width: 20,),
        //           Icon(Icons.report,size: 50,color: Colors.white,),
        //           SizedBox(width: 20,),
        //           Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               SizedBox(height: 20,),
        //               Text('Uh oh!',style: TextStyle(color: Colors.white,fontSize: 30,),),
        //               Text('Please enter email and password.',style: TextStyle(color: Colors.white,fontSize: 16,),),
        //             ],
        //           )
        //         ],
        //       ),
        //     );
        //   }).then((value) =>  Navigator.pop(context));
        // });
        showModalBottomSheet(
            context: context,
            builder: (context){
             return MyBottomSheetContent(context);
        }).then((value) {print('Bottom sheet closed with result: $value');
        });

      });
    }
  }


}
class MyBottomSheetContent extends StatelessWidget {
  final BuildContext parentContext;

  MyBottomSheetContent(this.parentContext);

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pop(parentContext);
    });

    return Container(
      width: double.infinity,
      height: 120,
      color: primeColor,
      child: Row(
        children: [
          SizedBox(width: 20,),
          Icon(Icons.report,size: 50,color: Colors.white,),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Uh oh!',style: TextStyle(color: Colors.white,fontSize: 30,),),
              Text('Please enter email and password.',style: TextStyle(color: Colors.white,fontSize: 16,),),
            ],
          )
        ],
      ),
    );
  }
}