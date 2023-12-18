import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: Center(
        child: Container(
          width: double.infinity,
          height: 330,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 3,
                offset: Offset(0, 2)
              ),
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text("Flitzen",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(color: Colors.grey,height: 2,margin: const EdgeInsets.symmetric(horizontal: 25),),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: (){
                      if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Successfully Login",style: TextStyle(color: Colors.cyan.shade900),),
                              backgroundColor: Colors.white,
                              behavior: SnackBarBehavior.floating,
                            )
                        );
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Fill Email id and Password!",style: TextStyle(color: Colors.cyan.shade900),),
                              backgroundColor: Colors.white,
                              behavior: SnackBarBehavior.floating,
                            )
                        );
                      }

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                    ),
                    child: Text("Login",style: TextStyle(color: Colors.white),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
