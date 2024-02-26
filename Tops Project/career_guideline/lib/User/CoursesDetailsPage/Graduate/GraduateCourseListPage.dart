import 'package:flutter/material.dart';

import '../../../AppConstant/AppList.dart';
import '../../../AppConstant/AppTextStyle.dart';
import '../../../AppConstant/Appcolors.dart';
import 'GraduateCourseDetailsPage.dart';

class GraduateCourseListPage extends StatelessWidget {
  const GraduateCourseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: CoursesAfterGraduation.length,
        itemBuilder: (context,index){
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => GraduateCourseDetailsPage(id: index, title: CoursesAfterGraduation2[index],)));
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
            title: Text(CoursesAfterGraduation[index],style: title2Style,),
            trailing: Icon(Icons.navigate_next,size: 25,color: pDark,),
          ),
        ),
      );
    });
  }
}
