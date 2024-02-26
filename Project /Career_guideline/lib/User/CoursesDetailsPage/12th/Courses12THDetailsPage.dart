import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/ImageWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextFormWidgets.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:flutter/material.dart';
import '../../../AppConstant/AppList.dart';
import '../../../AppConstant/AppString.dart';



class Courses12THDetailsPage extends StatelessWidget {
  final String title;
  final int id;
  Courses12THDetailsPage({super.key, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(leading: BackNow(onPressed: ()=>Navigator.pop(context)),title: title,automaticallyImplyLeading: false,),
      body:
      id == 0?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'UG Courses for Arts Students',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img9.png'),
            myDescription(data: b1),
            MyTitle(title: 'Top Courses After 12th Arts'),
            myTitle(data: b2),
            myDescription(data: b2),
            myDescription(data: b3),
            myDescription(data: b4),
            MyTitle(title: 'Top 10 DU Colleges for Arts'),
            Container(
                width: double.infinity,
                height: 480,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
              itemCount: DUCollegesArtsList.length,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 2),
                child: myTitle(data: DUCollegesArtsList[index]),
              );
            }))
          ],
        ),
      ):
      id == 1?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'Best Commerce stream subjects',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img10.png'),
            myDescription(data: b5),
            MyTitle(title: 'UG Courses available after 12th Commerce',alignment: Alignment.center),
            myTitle(data: b6),
            MyTitle(title: 'Apart from courses under Commerce there is also a list of professional courses to pursue after 12th'),
            myTitle(data: b7),
          ],
        ),
      ):
      id == 2?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'Best Science stream subjects',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img11.png',height: 280,),
            myDescription(data: b8),
            MyTitle(title: 'List of Courses after 12th Science'),
            myTitle(data: b9),
            MyTitle(title: 'Courses after 12th Science PCM'),
            myDescription(data: b10),
            myDescription(data: b11),
            myTitle(data: b12),
            MyTitle(title: 'Courses after 12th Science PCB'),
            myDescription(data: b13),
            myDescription(data: b14),
            myDescription(data: b15),
            myDescription(data: b16),
            myDescription(data: b17),
            myTitle(data: b18),

          ],
        ),
      ):Column(),

    );
  }




}
