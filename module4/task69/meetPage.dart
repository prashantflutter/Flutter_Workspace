import 'package:flutter/material.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color grayLite = Color(0xFF87939a);
    Color darkBlack = Color(0xFF2b2b2b);
    Color liteBlack = Color(0xFF3c3f41);
    Color white = Color(0xFFFFFFFF);
    final size = MediaQuery.of(context).size;
    var cr7 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtj2nDCHaO_T-XsdVA-DnVob0dIWFgEzwizg&usqp=CAU";
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
       backgroundColor: darkBlack,
        body:Column(
          children: [
            SizedBox(height: size.width*0.08,),
            Container(
              width: size.width,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    _scaffoldKey.currentState!.openDrawer();
                  }, icon: Icon(Icons.menu,color: grayLite,),),
                  Text('Meet',style: TextStyle(color: grayLite,fontSize: 20),),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width*0.45,
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent
                  ),
                  child:Text('New meeting',style: TextStyle(color: darkBlack,fontSize: 18),),
                ),
                Container(
                  width: size.width*0.45,
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.grey,
                    )
                  ),
                  child:Text('Join with a code',style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                ),
              ],
            )
          ],
        ) ,
    );
  }
}
