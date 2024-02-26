import 'package:flutter/material.dart';

import '../../../AppConstant/AppList.dart';
import '../../../AppConstant/AppTextStyle.dart';
import '../../../AppConstant/Appcolors.dart';
import 'Courses12THDetailsPage.dart';

class Courses12ListPage extends StatelessWidget {
  const Courses12ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/img13.jpg',height: 300,),
        Expanded(
          child: ListView.builder(
              itemCount: course2.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Courses12THDetailsPage(id: index, title: course1[index],)));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: pDark,
                            width: 2.5
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ]
                    ),
                    child: ListTile(
                      leading: Icon(Icons.book,size: 25,color: pDark,),
                      title: Text(course2[index],style: title2Style,),
                      trailing: Icon(Icons.navigate_next,size: 25,color: pDark,),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
