import 'package:flutter/material.dart';

import 'data_list.dart';

class AllEmailPage extends StatelessWidget {
  const AllEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color grayLite = Color(0xFF87939a);
    Color darkBlack = Color(0xFF2b2b2b);
    return Scaffold(
      backgroundColor: darkBlack,
      body:Expanded(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: idList.length,
              physics: NeverScrollableScrollPhysics(),
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
                child: Text(idList[index],style: TextStyle(color: darkBlack,fontSize: 20),),
              ),
              title: Text(emailList[index],style: TextStyle(color: grayLite),),
              subtitle: Container(
                child: Text(descriptionList[index],maxLines: 3,style: TextStyle(color: grayLite),),
              ),
            );
          }),
        ),
      ) ,
    );
  }
}
