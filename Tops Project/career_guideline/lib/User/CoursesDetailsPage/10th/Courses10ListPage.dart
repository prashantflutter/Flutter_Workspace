import 'package:careerguideline/AppConstant/AppList.dart';
import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:flutter/material.dart';
import '../../../AppConstant/Appcolors.dart';
import 'Course10DetailsPage.dart';

class Courses10THListPage extends StatelessWidget {
  const Courses10THListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: course1.length,
        itemBuilder: (context,index){
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Courses10THDetailsPage(id: index, title: course1[index],)));
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
            title: Text(course1[index],style: title2Style,),
            trailing: Icon(Icons.navigate_next,size: 25,color: pDark,),
          ),
        ),
      );
    });
  }
}
