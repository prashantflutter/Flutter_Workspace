import 'package:careerguideline/AppConstant/AppString.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:flutter/material.dart';

import '../../../AppConstant/AppList.dart';
import '../../../Widgets/ButtonWidgets.dart';
import '../../../Widgets/ImageWidgets.dart';
import '../../../Widgets/TextFormWidgets.dart';

class GraduateCourseDetailsPage extends StatelessWidget {
  final int id;
  final String title;
  const GraduateCourseDetailsPage({Key? key, required this.id, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(leading: BackNow(onPressed: ()=>Navigator.pop(context)),title: title,automaticallyImplyLeading: false,),
      body:  id == 0?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'List of Professional Courses after Graduation',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img15.png',height: 280,),
            myDescription(data: g2),
            myTitle(data: g3),
            MyTitle(title: 'PG Diploma in Management (PGDM)',alignment: Alignment.center),
            myDescription(data: g4),
            SizedBox(height: 10,),
            myTextBox(title: 'International Business',width: 200,description: 'PGDM in Finance'),
            myTextBox(title: 'Operations Management',width: 200,description: 'Business Analytics'),
            myTextBox(title: 'Marketing',width: 200,description: 'Retail Management'),
            SizedBox(height: 10,),
            MyTitle(title: 'MBA (Masters in Business Administration)',alignment: Alignment.center),
            myDescription(data: g5),
            MyTitle(title: 'MTech',alignment: Alignment.center),
            myDescription(data: g6),
            MyTitle(title: 'PGD in Hotel Management',alignment: Alignment.center),
            myDescription(data: g7),
            MyTitle(title: 'PGPM',alignment: Alignment.center),
            myDescription(data: g8),
            MyTitle(title: 'Certification in Finance and Accounting (CFA)',alignment: Alignment.center),
            myDescription(data: g9),
            MyTitle(title: 'Project Management',alignment: Alignment.center),
            myDescription(data: g10),
            MyTitle(title: 'Business Accounting and Taxation',alignment: Alignment.center),
            myDescription(data: g11),
          ],
        ),
      ):
      id == 1?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'List of Professional Courses After Graduation: Diploma and Certificate',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img16.png',width: 320,height: 200,),
            myDescription(data: h1),
            Container(
              width: double.infinity,
              height: 800,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DiplomaCertificateList.length,
                  itemBuilder: (context,index){
                    return myTextBox(title: DiplomaCertificateList[index],width:240 ,description: DiplomaCertificateDuration[index]);
                  }),
            )

          ],
        ),
      ):
      id == 2?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'List of Professional Courses after Graduation in Arts',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img17.png',height: 280,),
            myDescription(data: h2),
            myTitle(data: h3),
            MyTitle(title: h4),
            myTitle(data: h5),
            MyTitle(title: 'Master of Arts (MA)'),
            myDescription(data: h6),
            MyTitle(title: 'Popular International Universities for MA'),
            myTextBox(title: 'Name of the University',title2: 'Country',secondTitle:true,width: 230),
            Container(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: NameUniversity.length,
                  itemBuilder: (context,index){
                    return myTextBox(title: NameUniversity[index],description:UniversityRankings[index],width: 250);
                  }),
            )
          ],
        ),
      ):
      id == 3?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'List of Professional Courses after Graduation in Science',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img18.png',height: 200,),
            myDescription(data: h7),
            myTitle(data: h8),
          ],
        ),
      ):
      id == 4?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'List of Professional Courses after Graduation in Commerce',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img19.png',),
            myDescription(data: h9),
            myTitle(data: h10),
          ],
        ),
      ):Column(),
    );
  }
}
