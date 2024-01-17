import 'package:flutter/material.dart';
import 'AppConstant/appColors.dart';

Widget CustomButton({required void Function()? onPressed,bool isRound = true,String text = ''}){
  return Container(
    width: 260,
    height: 55,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: isRound?primeColor:null,
            side: isRound?null:BorderSide(
              color: primeColor,
            )
        ),
        child: Text(text,style: TextStyle(color: isRound?Colors.white:primeColor,),)),
  );
}


Widget CustomTextField({required TextEditingController controller,required String hintText,Widget? prefixIcon}){
  return TextFormField(
    controller: controller,
    cursorColor: primeColor,
    decoration: InputDecoration(
      hintText: '  $hintText',
      hintStyle: TextStyle(color: Colors.black26),
      prefixIcon: prefixIcon,
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.1),width: 0.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  );
}

