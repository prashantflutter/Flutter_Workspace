import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:careerguideline/Widgets/ButtonWidgets.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextFormWidgets.dart';
import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:flutter/material.dart';
import '../../../AppConstant/AppList.dart';
import '../../../AppConstant/AppString.dart';
import '../../../Widgets/ImageWidgets.dart';



class Courses10THDetailsPage extends StatelessWidget {
  final String title;
  final int id;
   Courses10THDetailsPage({super.key, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(leading: BackNow(onPressed: ()=>Navigator.pop(context)),title: title,automaticallyImplyLeading: false,),
      body:
      id == 0?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'Best Arts Stream Subjects',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img1.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d1,style: textStyle.copyWith(fontSize: 18),),
            ),
            MyTitle(title: 'Arts Stream Subjects in 11th',alignment: Alignment.center),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d2,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(d3,style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
          ],
        ),
      ):
      id == 1?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'Best Commerce stream subjects',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img2.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Text(d4,style: textStyle.copyWith(fontSize: 18),),
            ),
            MyTitle(title: 'Commerce stream subjects for classes 11 and 12 include',alignment: Alignment.center),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(d5,style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
          ],
        ),
      ):
      id == 2?SingleChildScrollView(
        child: Column(
          children: [
            MyTitle(title: 'Best Science stream subjects',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img3.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Text(d6,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Text(d7,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Text(d8,style: textStyle.copyWith(fontSize: 18),),
            ),
            MyTitle(title: 'Science stream subjects for classes 11th and 12th include',alignment: Alignment.center),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('1. Physics',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d10,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('2. Chemistry',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d11,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('3. Biology',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d12,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('4. Mathematics',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d13,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('5. English',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d14,style: textStyle.copyWith(fontSize: 18),),
            ),
          ],
        ),
      ):
      id == 3?SingleChildScrollView(
        child: Column(
            // List of Best Diploma Courses After 10th for All Streams
          children: [
            MyTitle(title: 'List of Best Diploma Courses After 10th for All Streams',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img4.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Text(d15,style: textStyle.copyWith(fontSize: 18),),
            ),
            MyTitle(title: 'Below we have mentioned the After 10th Diploma Courses List',alignment: Alignment.center),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Text(d16,style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Text(d17,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('Diploma Courses After 10th in Arts',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d18,style: textStyle.copyWith(fontSize: 18,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('Diploma Courses after 10th in Commerce',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d19,style: textStyle.copyWith(fontSize: 18,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('Diploma Courses after 10th in Science',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d20,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('IT and Computer Technology',style: textStyle.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d21,style: textStyle.copyWith(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(d22,style: textStyle.copyWith(fontSize: 18),),
            ),
          ],
        ),
      ):
      id == 4?SingleChildScrollView(
        child: Column(
            // List of Best Diploma Courses After 10th for All Streams
          children: [
            MyTitle(title: 'List of Best Diploma Polytechnic Courses After 10th',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img5.png'),
            myDescription(data: p2),
            myDescription(data: p3),
            myDescription(data: p4),
            MyTitle(title: 'Eligibility Criteria for Polytechnic in India',alignment: Alignment.center),
            myDescription(data: p5),
            myTextBox(title: 'Particulars',secondTitle: true,title2: 'Eligibility Criteria'),
            Container(
              width: double.infinity,
              height: 250,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: eligibilityTitle.length,
                  itemBuilder: (context,index){
                return  myTextBox(title:eligibilityTitle[index],description: eligibilityDec[index]);
              
              }),
            ),
            MyTitle(title: 'Top Polytechnic Careers After 10th',alignment: Alignment.center),
            myTextBox(title: 'Careers',secondTitle: true,title2: 'Average Salary'),
            Container(
              width: double.infinity,
              height: 720,
              child:ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: PolytechnicCareers.length,
                  itemBuilder: (context,index){
                    return  myTextBox(title:PolytechnicCareers[index],description: AverageSalary[index]);
                  }),
            ),
          ],
        ),
      ):
      id == 5?SingleChildScrollView(
        child: Column(
            // List of Best Diploma Courses After 10th for All Streams
          children: [
            MyTitle(title: 'List of Best Diploma Medical & Paramedical Courses 10th',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img6.png'),
            myDescription(data: p6),
            MyTitle(title: 'Diploma in Community Medical Service & Essential Drugs',alignment: Alignment.center),
            myDescription(data: p7),
            myTextBox(title: 'Type of Course',width: 250,secondTitle: true,title2: 'Duration'),
            Container(
              width: double.infinity,
              height: 380,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: ParamedicalCourses.length,
                  itemBuilder: (context,index){
                return  myTextBox(title:ParamedicalCourses[index],width: 260,description: ParamedicalDuration[index]);

              }),
            ),

          ],
        ),
      ):
      id == 6?SingleChildScrollView(
        child: Column(
            // List of Best Diploma Courses After 10th for All Streams
          children: [
            MyTitle(title: 'List of Best Vocational Courses 10th',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img7.png'),
            myDescription(data: p8),
            MyTitle(title: 'Vocational Courses After 10th',alignment: Alignment.center),
            myDescription(data: p9),
            myDescription(data: p10),
          ],
        ),
      ):
      id == 7?SingleChildScrollView(
        child: Column(
            // List of Best Diploma Courses After 10th for All Streams
          children: [
            MyTitle(title: 'List of Best ITI Courses 10th',alignment: Alignment.center),
            MyImageSet(image: 'assets/images/img8.jpg'),
            myDescription(data: p11),
            myDescription(data: p12),
            MyTitle(title: 'ITI Courses : Quick Highlights',alignment: Alignment.center),
            Container(
              width: double.infinity,
              height: 450,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: ITIDataList.length,
                itemBuilder: (context,index){
              return myTextBox(title: ITIDataList[index],
                description: ITIDataDesc[index],);
            
            }),
          ),
            MyTitle(title: 'Required Skills for ITI Students',alignment: Alignment.center),
            myDescription(data: p13),
            MyTitle(title: 'What are the advantages of doing an ITI course?',alignment: Alignment.center),
            myDescription(data: p13),
            myDescription(data: p14),
            myDescription(data: p15),
            myDescription(data: p16),
            myDescription(data: p17),
            myDescription(data: p18),
            myDescription(data: p19),
            myDescription(data: p20),
          ],
        ),
      ):Column(),
    );
  }




}
