import 'dart:developer';
import 'dart:io';
import 'package:careerguideline/Widgets/MyNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Widgets/MyDialogs.dart';
import '../../Widgets/MyDrawer.dart';
import 'AdminHomePageView.dart';
import 'AdminProfilePage.dart';

class AdminHomePage extends StatefulWidget {
  final String id;
   AdminHomePage({Key? key, required this.id}) : super(key: key);
  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _selectedIndex = 0;

  late List<Widget> _pages;
  String? Admin_ID;
  init()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
   final AdminID = preferences.getString('AdminID')?? '';
    if(AdminID.isNotEmpty){
      Admin_ID = AdminID;
      _pages = <Widget>[
        AdminHomePageView(),
        AdminProfilePage(id: widget.id,),
      ];
    }
    setState(() {});
  }


  @override
  void initState() {
    super.initState();
    init();
  }


  @override
  Widget build(BuildContext context) {
    log('int _selectedIndex ${_selectedIndex}');
    log('Admin id :  ${Admin_ID}');
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop)async{
        if (didPop) return;
         LogoutNow(context: context, title: 'Are you sure want to exit?',
            sub1: 'Yes', sub2: 'No', onPressed1: ()=>exit(0), onPressed2:()=>Navigator.pop(context));
      },
      child: Scaffold(
        body:Center(
          child: _pages.elementAt(_selectedIndex), //New
        ),
        bottomNavigationBar: MyNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        drawer: MyDrawer(context,id: Admin_ID!),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
