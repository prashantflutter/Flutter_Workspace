import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'AppConstant/Appcolors.dart';
import 'CommonPage/SplashPage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid?
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyCjY6MvxGg6yj6EL414B6ZjuXSRakfNVAQ',
        appId: '1:584790907464:android:5bb6949c4c5e9fe986167d',
        messagingSenderId: '584790907464',
        projectId: 'careerguideline-c6d0d')
  ):Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Career Guideline',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: pDark),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}


