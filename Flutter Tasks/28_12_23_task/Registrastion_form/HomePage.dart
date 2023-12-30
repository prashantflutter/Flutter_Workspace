import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String fName;
  final String lName;
  final String email;
  final String gender;
  final String? hobbies1;
  final String? hobbies2;
  final String? hobbies3;
  final String? hobbies4;
  const HomePage({super.key, required this.fName, required this.lName, required this.email, required this.gender, this.hobbies1, this.hobbies2, this.hobbies3, this.hobbies4});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static Color primColor =  Color(0xFF004AAD);
  static Color lightColor =  Color(0xFF5271FF);
  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Container(
              color: primColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("  ${widget.fName} Details",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:size.width*0.42,
                  height: size.width*0.15,
                  child: CustomTextFormField(
                      keyboardType: TextInputType.name,
                      hintText:  widget.fName,
                      contentPadding: EdgeInsets.symmetric(horizontal: 23)
                  ),
                ),
                Container(
                  width:size.width*0.42,
                  height: size.width*0.15,
                  child: CustomTextFormField(
                      keyboardType: TextInputType.name,
                      hintText:   widget.lName,
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
                  keyboardType: TextInputType.emailAddress,
                  hintText:   widget.email,
                  contentPadding: EdgeInsets.symmetric(horizontal: 23)


              ),
            ),
            SizedBox(height: 10,),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Gender : ',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                SizedBox(width: 15,),
                Text(widget.gender,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),

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
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         widget.hobbies1 != ""?Text(widget.hobbies1!,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),):Container(),
                         widget.hobbies1 != ""?SizedBox(width: 20,):SizedBox(),
                         widget.hobbies2 != ""?Text(widget.hobbies2!,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),):Container(),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         widget.hobbies3 != ""?Text(widget.hobbies3!,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),):Container(),
                         widget.hobbies3 != ""?SizedBox(width: 20,):SizedBox(),
                         widget.hobbies4 != ""?Text(widget.hobbies4!,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),):Container(),
                  
                       ],
                     ),
                  
                   ],
                                 ),
                )


              ],
            ),

              ],
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }

  Widget CustomTextFormField({ TextEditingController? controller,Key? key,TextInputType? keyboardType,bool obscureText = false,
    String? labelText,TextStyle? labelStyle,TextStyle? hintStyle,String? hintText,Widget? suffixIcon,Widget? prefixIcon,bool enabled = true,
    EdgeInsetsGeometry? contentPadding,Function(String?)? onSaved,Function(String)? onFieldSubmitted,String? Function(String?)? validator}){
    return TextFormField(
      key:key,
      controller: controller,
      keyboardType:keyboardType,
      obscureText: obscureText,
      readOnly: true,
      cursorColor: primColor,
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        // labelText: "  $labelText  ",
        // labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
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


