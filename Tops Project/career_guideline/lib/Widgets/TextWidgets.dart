import 'package:flutter/material.dart';

import '../AppConstant/AppTextStyle.dart';
import '../AppConstant/Appcolors.dart';

Widget myTitle({required String data,double? fontSize = 18}){
  return  Padding(
    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
    child: Text(data,style: textStyle.copyWith(fontSize: fontSize,fontWeight: FontWeight.w700),),
  );
}

Widget myDescription({required String data}){
  return   Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    child: Text(data,style: textStyle.copyWith(fontSize: 18),),
  );
}


Widget myTextBox({required String title,String? title2,double width = 130,String? description,bool secondTitle = false}){
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.zero,
      border: Border(
        top: BorderSide(color: pDark,width: 1),
        bottom: BorderSide(color: pDark,width: 1),
        left: BorderSide(color: pDark,width: 2),
        right: BorderSide(color: pDark,width: 2),
      ),
    ),
    child: Row(
      children: [
        Container(
            width: width,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:  EdgeInsets.only(left: 8),
              child: Text('$title',style: titleStyle.copyWith(fontSize: 18),),
            )),
        VerticalDivider(width: 2,color: pDark,),
        secondTitle== true?Expanded(child: Padding(
          padding:  EdgeInsets.only(left: 8),
          child: Text(' $title2',style: titleStyle.copyWith(fontSize: 18),),
        )):Expanded(child: Text('$description',style: titleStyle.copyWith(fontSize: 14),)),
      ],
    ),
  );
}

Widget TitleWithData({required String title,required String data,double? fontSize1 = 18,double? fontSize2 = 16}){
  return  Padding(
    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
    child: Row(
      children: [
        Text("$title : ",style: textStyle.copyWith(fontSize: fontSize1,fontWeight: FontWeight.w700),),
        Expanded(child: Text(data,style: textStyle.copyWith(fontSize: fontSize2,fontWeight: FontWeight.w500),)),
      ],
    ),
  );
}

Widget MYListContainer({required String title,void Function()? onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: pDark,
              width: 2.5
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(0, 2),
            ),
          ]
      ),
      child: ListTile(
        leading: Icon(Icons.book,size: 25,color: pDark,),
        title: Text(title,style: title2Style,),
        trailing: Icon(Icons.navigate_next,size: 25,color: pDark,),
      ),
    ),
  );
}
