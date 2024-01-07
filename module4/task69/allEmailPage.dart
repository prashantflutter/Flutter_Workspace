import 'package:flutter/material.dart';

import 'data_list.dart';

class AllEmailPage extends StatefulWidget {
  const AllEmailPage({super.key});

  @override
  State<AllEmailPage> createState() => _AllEmailPageState();
}

class _AllEmailPageState extends State<AllEmailPage> {

  Color grayLite = Color(0xFF87939a);
  Color darkBlack = Color(0xFF2b2b2b);
  Color liteBlack = Color(0xFF3c3f41);
  Color white = Color(0xFFFFFFFF);
  var cr7 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtj2nDCHaO_T-XsdVA-DnVob0dIWFgEzwizg&usqp=CAU";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkBlack,
      body:Column(
        children: [
          SizedBox(height: size.width*0.08,),
          Container(
            width: size.width,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: liteBlack,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        _scaffoldKey.currentState!.openDrawer();
                      }, icon: Icon(Icons.menu,color: grayLite,),),
                      Text('Search in emails',style: TextStyle(color: grayLite,fontSize: 14),),
                    ],
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(cr7),fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: ListView.builder(
                  itemCount: idList.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:Colors.deepPurpleAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Text(idList[index],style: TextStyle(color: darkBlack,fontSize: 18),),
                      ),
                      title: Text(emailList[index],style: TextStyle(color: grayLite),),
                      subtitle: Container(
                        child: Text(descriptionList[index],maxLines: 2,style: TextStyle(color: grayLite),),
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

