
import 'package:flutter/material.dart';

import '../AppConstant/AppTextStyle.dart';
import '../AppConstant/Appcolors.dart';

Widget MyTextForm({required TextEditingController controller,Widget? prefixIcon,Widget? suffixIcon,required String hintText,bool obscureText = false,int? maxLines = 1}){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    child: TextFormField(
      controller: controller,
      maxLines: maxLines,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: pDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: pDark),
        ),
      ),
    ),
  );
}

Widget MyTitle({required String title,AlignmentGeometry? alignment}){
  return Container(
      width: double.infinity,
      alignment: alignment,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: pWhite,
          border: Border.all(
            color: pDark,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(-2, 2)
            )
          ]
      ),
      child: Text(title,textAlign: TextAlign.center,style: title2Style,));
}