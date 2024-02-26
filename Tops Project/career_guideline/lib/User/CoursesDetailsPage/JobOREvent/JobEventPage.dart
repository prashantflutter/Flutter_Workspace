import 'package:careerguideline/Widgets/TextWidgets.dart';
import 'package:flutter/material.dart';

import 'JobDetailsPage.dart';

class JobEventPage extends StatelessWidget {
  const JobEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/PagesImages/events2.png',height: 300,),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: MYListContainer(title: 'Job List',
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> JobDetailsPage(title: 'Jobs Details', id: 1,)))),
        ),
        MYListContainer(title: 'Events List',onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> JobDetailsPage(title: 'Events Details', id: 2,)))),
      ],
    );
  }

}
