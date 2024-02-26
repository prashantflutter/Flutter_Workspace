import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:flutter/material.dart';


Widget MyNavigationBar({int currentIndex = 0,void Function(int)? onTap}){
  return BottomNavigationBar(
    backgroundColor: pW,
    currentIndex:currentIndex,
      onTap:onTap,
      selectedIconTheme: IconThemeData(size: 30),
      selectedLabelStyle: title2Style,
      selectedItemColor: pDark,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Profile',)
      ]);
}