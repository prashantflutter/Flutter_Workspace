
import 'package:flutter/material.dart';

import 'loginPage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final myKey = GlobalKey<FormState>();

  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String? gender;

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
                Text("Registration",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.42,
                      height: 55,
                      child: TextFormField(
                        controller: fNameController,
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          labelText: "First Name",
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
                          fNameController.text = value;
                        },
                        onSaved: (value){
                          fNameController.text = value!;
                        },
                        validator: (value){
                          if(value.toString().isEmpty){
                            return "Enter First Name";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.42,
                      height: 55,
                      child: TextFormField(
                        controller: lNameController,
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          labelStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                          enabled: true,
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: Colors.white,),
                          ),
                        ),
                        onFieldSubmitted: (value){
                          lNameController.text = value;
                        },
                        onSaved: (value){
                          lNameController.text = value!;
                        },
                        validator: (value){
                          if(value.toString().isEmpty){
                            return "Enter Last Name";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
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
                Row(
                  children: [
                    Text("Gender :  ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    Text("Male",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    Radio(
                        value: "Male",
                        groupValue: gender,
                        fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                        onChanged: (value){
                          gender = value;
                          setState(() {});
                          print("gender : ${gender}");
                        }),
                    Text("Female",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    Radio(
                        value: "Female",
                        fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                        groupValue: gender, onChanged: (value){
                      gender = value;
                      print("gender : ${gender}");
                      setState(() {});
                    }),
                  ],
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
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: TextFormField(
                    controller: cPasswordController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
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
                      cPasswordController.text = value;
                    },
                    onSaved: (value){
                      cPasswordController.text = value!;
                    },
                    validator: (value){
                      if(value.toString().isEmpty){
                        return "Enter Confirm Password";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: addressController,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      labelText: "Address",
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
                      contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 15)
                  ),
                  onFieldSubmitted: (value){
                    addressController.text = value;
                  },
                  onSaved: (value){
                    addressController.text = value!;
                  },
                  validator: (value){
                    if(value.toString().isEmpty){
                      return "Enter Address";
                    }
                    return null;
                  },
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
                    child: Text("Submit",style: TextStyle(color:  Colors.grey,fontSize: 18,fontWeight: FontWeight.w500),),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text("go to login!",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //
  void checkFillData(){
    // if(myKey.currentState!.validate()){
    //   print("Data Processing...");
    // } else
    if(fNameController.text.isEmpty || lNameController.text.isEmpty || emailController.text.isEmpty ||
        passwordController.text.isEmpty || cPasswordController.text.isEmpty || addressController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Fill the All Details of Registration!!!",style: TextStyle(color: Colors.grey,fontSize: 14),),
          backgroundColor: Colors.white,
          behavior: SnackBarBehavior.floating,),);
    }else if(gender.toString() != "Male" &&  gender.toString() != "Female"){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Select Gender!!!",style: TextStyle(color:Colors.grey,fontSize: 14),),
          backgroundColor: Colors.white,
          behavior: SnackBarBehavior.floating,),);
    }else if(passwordController.text != cPasswordController.text){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password & Confirm Password is not Match!!!",style: TextStyle(color:  Colors.grey,fontSize: 14),),
          backgroundColor: Colors.white,
          behavior: SnackBarBehavior.floating,),);
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

}