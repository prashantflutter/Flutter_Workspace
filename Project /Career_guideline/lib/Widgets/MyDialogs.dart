import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 LogoutNow({required BuildContext context,required String title, required String sub1,required String sub2,required void Function()? onPressed1,required void Function()? onPressed2}){
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: pWhite,
      title: Center(child: Text(title,style: titleStyle,),),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyButton(width:80,title: sub1, onPressed: onPressed1),
            MyButton(width:80,title: sub2, onPressed: onPressed2),
          ],
        ),

      ],
    );
  });
}

 ErrorDialog({required BuildContext context,required String title, required String sub1,required void Function()? onPressed}){
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: pWhite,
      title: Center(child: Text(title,style: titleStyle,),),
      actions: [
        MyButton(width:80,title: sub1, onPressed: onPressed),
      ],
    );
  });
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> MyToastMSG({required String text,IconData icon = Icons.gpp_good_outlined,Color backgroundColor = Colors.green,required BuildContext context}){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(icon,color: pWhite,),
              ),
              Expanded(child: Text(text,style: title2Style.copyWith(color: pWhite,fontWeight: FontWeight.w400),)),
            ],
          ),
          backgroundColor:backgroundColor,
        behavior: SnackBarBehavior.floating,
      ));

}