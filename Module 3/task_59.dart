import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


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
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  height: 55,
                  child: TextFormField(
                    controller: fNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),

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
                  width: 170,
                  height: 55,
                  child: TextFormField(
                    controller: lNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),

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
                decoration: InputDecoration(
                  labelText: "Email-Id",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),

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
                Text("Gender :  "),
                Text("Male"),
                Radio(value: "Male", groupValue: gender, onChanged: (value){
                  gender = value;
                  setState(() {});
                }),
                Text("Female"),
                Radio(value: "Female", groupValue: gender, onChanged: (value){
                  gender = value;
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
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),

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
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),

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
              decoration: InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15)
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
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("Submit"))




          ],
        ),
      ),
    );
  }
}

