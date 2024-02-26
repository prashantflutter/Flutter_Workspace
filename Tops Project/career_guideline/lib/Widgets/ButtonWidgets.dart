import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:flutter/material.dart';
import '../AppConstant/Appcolors.dart';

Widget MyRadio({required String title,required String value,required String? groupValue,required void Function(String?)? onChanged}){
  return  Row(
    children: [
      Text(title,style: textStyle,),
      Radio(
          value: value,
          groupValue: groupValue,
          fillColor: MaterialStateColor.resolveWith((states) => pDark),
          onChanged: onChanged)
    ],
  );
}


Widget MyButton({required String title,double width = 130,required void Function()? onPressed,Color? backgroundColor,bool isColor = false}){
  return Container(
      width: width,
      height: 50,
      margin: EdgeInsets.only(top: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor,elevation: 2),
          onPressed: onPressed, child: Text(title,style: TextStyle(fontSize: 16,color: isColor?pWhite:pDark),)));
}

Widget MyTextButton({required String title,required void Function()? onPressed}){
  return InkWell(onTap: onPressed, child: Text(title,style: textStyle,));
}

Widget Button1({void Function()? onTap,String? image,double width = 150,double height = 150,double imageWidth = 70,double imageHeight = 70,required String title}){
  return InkWell(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: pW,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(-2, 2)
          ),
        ],),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image != null?Image.asset(image!,width: imageWidth,height: imageHeight,):SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,),
            child: Text(title,style: titleStyle.copyWith(fontSize: 18,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
          ),
        ],
      ),
    ),
  );
}

Widget BackNow({required void Function()? onPressed}){
  return  Padding(
    padding: EdgeInsets.only(left: 8.0),
    child: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_ios,color: pWhite,)),
  );
}