// 67. Write a code to display profile and logout option in options menu
import 'package:flutter/material.dart';

// class OptionMenuPage extends StatelessWidget {
//   const OptionMenuPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("Option"),
//       ),
//     );
//   }
// }

// import 'package:fluttertoast/fluttertoast.dart';

// import 'call_msg.dart';

enum gender {other, Male, Female }

class AdminPage extends StatefulWidget {
  @override
  AdminPageState createState() => AdminPageState();
}

class AdminPageState extends State<AdminPage> {
  final _formKey = GlobalKey<FormState>();

  bool one = true;
  bool two = false;
  bool three = false;

  gender _selectedOption = gender.other;

  @override
  Widget build(BuildContext context) {
    TextEditingController UserName = TextEditingController();
    TextEditingController Password = TextEditingController();
    TextEditingController CourseName = TextEditingController();
    TextEditingController displayController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Form ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: UserName,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                        labelText: "Enter  your Name",
                        prefixIcon: Icon(Icons.person),
                      ),
                      onFieldSubmitted: (value) {
                        UserName.text = value.toString();
                      },
                      onSaved: (value) {
                        UserName.text = value.toString();
                      },
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Enter your Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: Password,
                      decoration: InputDecoration(
                        labelText: "Enter your password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                      ),
                      onFieldSubmitted: (value) {
                        Password.text = value.toString();
                      },
                      onSaved: (value) {
                        Password.text = value.toString();
                      },
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Enter Password";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 10,
                height: 10,
              ),
              TextFormField(
                controller: CourseName,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.yellowAccent),
                  ),
                  labelText: "Enter  your CourseName",
                  prefixIcon: Icon(Icons.search),
                ),
                onFieldSubmitted: (value) {
                  UserName.text = value.toString();
                },
                onSaved: (value) {
                  UserName.text = value.toString();
                },
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "Enter your CourseName";
                  }
                  return null;
                },
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Row(
                children: [
                  Text("Gender:"),
                  SizedBox(width: 50),
                  Row(
                    children: [
                      Radio(
                        value: gender.Male,
                        groupValue: _selectedOption,
                        onChanged: (gender? value) {
                          setState(() {
                            _selectedOption = value!;
                          });
                        },
                      ),
                      Text("Male"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Radio(
                        value: gender.Female,
                        groupValue: _selectedOption,
                        onChanged: (gender? value) {
                          setState(() {
                            _selectedOption = value!;
                          });
                        },
                      ),
                      Text("Female"),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: one,
                    onChanged: (bool? value) {
                      setState(() {
                        one = value!;
                      });
                    },
                  ),
                  Text("Flutter"),
                  SizedBox(width: 10),
                  Checkbox(
                    value: two,
                    onChanged: (bool? value) {
                      setState(() {
                        two = value!;
                      });
                    },
                  ),
                  Text("Kotlin"),
                  SizedBox(width: 10),
                  Checkbox(
                    value: three,
                    onChanged: (bool? value) {
                      setState(() {
                        three = value!;
                      });
                    },
                  ),
                  Text("Java"),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  submit();
                  displayController.text =
                      'Name: ${UserName.text}\nPassword: ${Password.text}\nCourse: ${CourseName.text}\nGender: ${_selectedOption.toString()}\nSkills: Flutter: $one, Kotlin: $two, Java: $three';
                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'User Details:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextFormField(
                controller: displayController,
                readOnly: true,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Details",
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      print("Data Process");
    }
  }
}
