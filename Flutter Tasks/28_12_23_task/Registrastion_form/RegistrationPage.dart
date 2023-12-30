import 'package:flutter/material.dart';

import 'HomePage.dart';


class RegistrationPage extends StatefulWidget{
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();

}

class _RegistrationPageState extends State<RegistrationPage>{

  final myKey = GlobalKey<FormState>();

  static Color primColor =  Color(0xFF004AAD);
  static Color lightColor =  Color(0xFF5271FF);

  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  String? genderValue;
  bool  coding = false;
  bool  traveling = false;
  bool  reading = false ;
  bool  sportGame = false;
  bool  listening = false;
  var wrongFormat;

  String? validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    // return (!regex.hasMatch(value)) ? false : true;
    if (value.isEmpty) {
      print('Please enter Email-id');
      return 'Please enter Email-id';
    } else {
      if (!regex.hasMatch(value)) {
        print('Enter valid Email-id');
        return 'Enter valid Email-id';
      } else {
        return null;
      }
    }
  }

  String? validatePassword(String value) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
    if (value.isEmpty) {
      print('Please enter password');
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        print('Enter valid password');
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                color: primColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("  Thynk Unlimited",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("   Registration",style: TextStyle(color: primColor,fontSize: 16,fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width:size.width*0.42,
                    height: size.width*0.15,
                    child: CustomTextFormField(
                        controller: fNameController,
                        keyboardType: TextInputType.name,
                        labelText: "First Name",
                        hintText:  "First Name",
                        onSaved: (value){
                          fNameController.text = value.toString();
                        },
                        onFieldSubmitted: (value){
                          fNameController.text = value.toString();
                        },
                        validator: (value){
                          if(value.toString().isEmpty){
                            return "Please Enter First Name";
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 23)


                    ),
                  ),
                  Container(
                    width:size.width*0.42,
                    height: size.width*0.15,
                    child: CustomTextFormField(
                        controller: lNameController,
                        keyboardType: TextInputType.name,
                        labelText: "Last Name",
                        hintText:  "Last Name",
                        onSaved: (value){
                          lNameController.text = value.toString();
                        },
                        onFieldSubmitted: (value){
                          lNameController.text = value.toString();
                        },
                        validator: (value){
                          if(value.toString().isEmpty){
                            return "Please Enter Last Name";
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 23)


                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width:size.width,
                height: size.width*0.15,
                alignment: Alignment.center,
                child: CustomTextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    labelText: "E-Mail",
                    hintText:  "Enter Email",
                    onSaved: (value){
                      emailController.text = value.toString();
                    },
                    onFieldSubmitted: (value){
                      emailController.text = value.toString();
                    },
                    validator: (value){
                      return validateEmail(value.toString());
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 23)


                ),
              ),
              SizedBox(height: 10,),
              Container(
                width:size.width,
                height: size.width*0.15,
                alignment: Alignment.center,
                child: CustomTextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    labelText: "Password",
                    hintText:  "Enter Password",
                    onSaved: (value){
                      passwordController.text = value.toString();
                    },
                    onFieldSubmitted: (value){
                      passwordController.text = value.toString();
                    },
                    validator: (value){
                      return validatePassword(value.toString());
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 23)


                ),
              ),
              SizedBox(height: 10,),
              Container(
                width:size.width,
                height: size.width*0.15,
                alignment: Alignment.center,
                child: CustomTextFormField(
                    controller: cPasswordController,
                    keyboardType: TextInputType.text,
                    labelText: " Confirm Password",
                    hintText:  "Enter Confirm Password",
                    onSaved: (value){
                      cPasswordController.text = value.toString();
                    },
                    onFieldSubmitted: (value){
                      cPasswordController.text = value.toString();
                    },
                    validator: (value){
                      return validatePassword(value.toString());
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 23)


                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Gender : ',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                  SizedBox(width: 15,),
                  Row(
                    children: [
                      Text('Male ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                      Radio(
                          value: "male",
                          groupValue: genderValue,
                          activeColor: primColor,
                          onChanged: (value){
                            genderValue = value;
                            setState(() {});
                          })
                    ],
                  ),
                  Row(
                    children: [
                      Text('Female :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                      Radio(
                          value: "female",
                          groupValue: genderValue,
                          activeColor: primColor,
                          onChanged: (value){
                            genderValue = value;
                            setState(() {});
                          })
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 60,
                      alignment: Alignment.topCenter,
                      child: Text('Hobbies : ',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),)),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: size.width,
                          height: 30,
                          child: Row(
                            children: [
                              Text('Coding  ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              Checkbox(
                                value: this.coding,
                                onChanged: (value){
                                  this.coding = value!;
                                  setState(() {});
                                }, activeColor: primColor,),
                              Text('Traveling   ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              Checkbox(
                                value: this.traveling,
                                onChanged: (value){
                                  this.traveling = value!;
                                  setState(() {});
                                }, activeColor: primColor,),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width,
                          height: 30,
                          child: Row(
                            children: [
                              Text('Reading',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              Checkbox(
                                value: this.reading,
                                onChanged: (value){
                                  this.reading = value!;
                                  setState(() {});
                                }, activeColor: primColor,),
                              Text('SportGame',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              Checkbox(
                                value: this.sportGame,
                                onChanged: (value){
                                  this.sportGame = value!;
                                  setState(() {});
                                }, activeColor: primColor,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightColor,
                  ),
                  onPressed: (){
                    checkValidation();
                    print("genderValue === $genderValue");
                    print("wrongFormat === $wrongFormat");

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Submit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


  void checkValidation(){
    if(myKey.currentState!.validate()){
      print("Data Processing...");
    } else if(genderValue != null){
     if(passwordController.text == cPasswordController.text){
      print("Navigator Processing...");
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          HomePage(
            fName: fNameController.text,
            lName: lNameController.text,
            email: emailController.text,
            gender:genderValue??'',
            hobbies1:coding?"Coding":"",
            hobbies2:traveling?"Traveling":"",
            hobbies3:reading?"Reading":"",
            hobbies4:sportGame?"SportGame":"",
          ),),);
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Password is not match"
            ,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
          backgroundColor: Colors.redAccent.withOpacity(0.4),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
    } else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please Select Gender"
            ,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
          backgroundColor: Colors.redAccent.withOpacity(0.4),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }


  Widget CustomTextFormField({required TextEditingController controller,Key? key,TextInputType? keyboardType,bool obscureText = false,
    String? labelText,TextStyle? labelStyle,TextStyle? hintStyle,String? hintText,Widget? suffixIcon,Widget? prefixIcon,bool enabled = true,
    EdgeInsetsGeometry? contentPadding,Function(String?)? onSaved,Function(String)? onFieldSubmitted,String? Function(String?)? validator}){
    return TextFormField(
      key:key,
      controller: controller,
      keyboardType:keyboardType,
      obscureText: obscureText,

      cursorColor: primColor,
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        labelText: "  $labelText  ",
        labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
        hintText: "  $hintText  ",
        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        contentPadding: contentPadding,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: primColor,width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: primColor,width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: primColor,width: 1.5),
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