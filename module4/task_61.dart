// 61. Create custom toolbar as per given below design Create toolbar with
// spinner and search functionality


import 'package:flutter/material.dart';


class searchToolbarPage extends StatefulWidget {
   searchToolbarPage({super.key});

  @override
  State<searchToolbarPage> createState() => _searchToolbarPageState();
}

class _searchToolbarPageState extends State<searchToolbarPage> {

  List<String> courseNameList = ['Flutter','Kotlin','Java','Python','.Net','ReactJS','PHP',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("spinner search functionality",style: TextStyle(color: Colors.white,fontSize: 16),),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate());
          }, icon: Icon(Icons.search,color: Colors.white,))
        ],
      ),
      body: Center(
        child: Text("Selected Course is "),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate{
  List<String> courseNameList = ['Flutter','Kotlin','Java','Python','.Net','ReactJS','PHP',];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear,color: Colors.grey,),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){close(context, null);}, icon: Icon(Icons.keyboard_backspace,color: Colors.grey,));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var field in courseNameList) {
      if (field.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(field);
      }
    }
    return Center(
      child: ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return Center(child: Text(result,style: TextStyle(fontSize: 25,color: Colors.green),));
          ;
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var field in courseNameList) {
      if (field.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(field);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: (){
            query = result;
          },
        );
      },
    );
  }
}
