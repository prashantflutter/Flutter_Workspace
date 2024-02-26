import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:careerguideline/Widgets/TextFormWidgets.dart';
import 'package:flutter/material.dart';
import '../../Widgets/ButtonWidgets.dart';
import '../CoursesDetailsPage/10th/Courses10ListPage.dart';
import '../CoursesDetailsPage/12th/Courses12ListPage.dart';
import '../CoursesDetailsPage/Graduate/GraduateCourseListPage.dart';
import '../CoursesDetailsPage/JobOREvent/JobEventPage.dart';
import '../CoursesDetailsPage/JobOREvent/Job_Event_Apply_Page.dart';

class CourseDetailsPage extends StatelessWidget {
  final int id;
  final String titleOfCourse;

  const CourseDetailsPage({super.key, required this.titleOfCourse, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: BackNow(onPressed: ()=>Navigator.pop(context),),
          title:titleOfCourse == "Post\nGraduate"?'Post Graduate':titleOfCourse),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          id == 4?SizedBox():id == 5?SizedBox():MyTitle(title: 'List of 2024 Courses after $titleOfCourse Standard'),
          id == 0?Expanded(child: Courses10THListPage()):
          id == 1? Expanded(child: Courses12ListPage()):
          id == 2? Expanded(child: GraduateCourseListPage()):
          id == 3? Expanded(child: JobEventPage()):
          id == 4? Expanded(child: JobEventApplyPage(isJob: true,)):
          id == 5? Expanded(child: JobEventApplyPage()):Container(),

        ],
      ),
    );
  }


}
