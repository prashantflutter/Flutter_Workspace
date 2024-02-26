import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  List<Widget>? actions;
  Widget? leading;
  Color backgroundColor;
  bool automaticallyImplyLeading ;
  IconThemeData? iconTheme;

  MyAppBar(
      {required this.title,
        this.actions,
        this.leading,
        this.backgroundColor = pDark,
        this.automaticallyImplyLeading = true,
        this.iconTheme});


  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      leading: leading,
      iconTheme:iconTheme,
      centerTitle: true,
      title: Text(title,style: TextStyle(color: Colors.white,),),
      actions: actions,
    );
  }
}