import 'package:flutter/material.dart';
import 'package:untitled/task_21_23/5_23/admin_login_page.dart';
import 'package:untitled/task_21_23/5_23/user_login_page.dart';

enum loginSelect {admin,user}

class SelectLoginPage extends StatefulWidget {
  const SelectLoginPage({Key? key}) : super(key: key);

  @override
  State<SelectLoginPage> createState() => _SelectLoginPageState();
}

class _SelectLoginPageState extends State<SelectLoginPage> {

  loginSelect _login = loginSelect.admin;
  @override
  Widget build(BuildContext context) {
    bool choice ;
    return Scaffold(
      appBar: AppBar(title: Text("Select Login Page"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: Radio(value: loginSelect.admin, groupValue: _login,
                    onChanged: (value) {
                      _login = value!;
                      setState(() {});
                  },),
                  title: Text("Admin Login"),

                ),
              ),
              Expanded(child: ListTile(
                leading: Radio(value: loginSelect.user, groupValue: _login,
                  onChanged: (value) {
                    _login = value!;
                    setState(() {});
                  },),
                title: Text("User Login"),

              ),)
            ],
          ),
          SizedBox(height: 20,),

          SizedBox(
            width: 200,
            height: 55,
            child: TextButton.icon(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20)),
              icon: const Icon(Icons.person),
              onPressed: () {
                if(_login == loginSelect.admin){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdminLoginPage()));
                }else{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserLoginPage()));
                }
              },
              label: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}


