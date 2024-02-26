import 'dart:developer';
import 'dart:io';

import 'package:careerguideline/User/Pages/UserProfilePage.dart';
import 'package:careerguideline/Widgets/MyDialogs.dart';
import 'package:careerguideline/Widgets/MyNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Widgets/MyDrawer.dart';
import 'HomePageView.dart';

class HomePage extends StatefulWidget {
  final String? id;
  const HomePage({super.key, this.id});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _selectedIndex = 0;

  var UserID;
  List<Widget> _pages = [];

  init()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
   final userID = preferences.getString('UserID')?? '';
    if(userID.isNotEmpty){
      log('userID2 : $userID');
      UserID = userID;
       _pages = <Widget>[
        HomePageView(),
        UserProfilePage(id: UserID,)
      ];
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }


  @override
  Widget build(BuildContext context) {

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop)async {
        if (didPop) return;
        LogoutNow(context: context,
            title: 'Are you sure want to exit?',
            sub1: 'Yes',
            sub2: 'No',
            onPressed1: () => exit(0),
            onPressed2: () => Navigator.pop(context));
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: _pages.elementAt(_selectedIndex), //New
        ),
        drawer: MyDrawer(context, id: widget.id.toString(),),
        bottomNavigationBar: MyNavigationBar(
            onTap:_onItemTapped,currentIndex: _selectedIndex),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
