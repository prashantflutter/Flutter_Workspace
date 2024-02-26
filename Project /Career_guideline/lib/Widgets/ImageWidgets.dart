import 'package:flutter/material.dart';

Widget MyImageSet({required String image,double width = double.infinity,double? height}){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Card(
        elevation: 5,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(image,width: width,height:height,fit: BoxFit.contain,)),
  );
}