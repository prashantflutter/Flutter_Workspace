import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {

  List postListData = [];
  Future<void>GetData()async{
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final List<dynamic> body = json.decode(response.body);

      print('body == $body');
    }else{
      debugPrint('Error : ${response.statusCode}');
    }
  }
  @override
  void initState() {
    GetData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [

       ],
     ),
    );
  }
}
