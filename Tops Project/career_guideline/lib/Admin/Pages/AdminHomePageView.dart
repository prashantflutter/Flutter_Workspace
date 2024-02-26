import 'package:careerguideline/Admin/AdminConstant/AdminStrings.dart';
import 'package:careerguideline/Admin/Pages/AdminOldPostPage.dart';
import 'package:careerguideline/Admin/Pages/AdminPostJobPage.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../Widgets/ButtonWidgets.dart';
import '../../Widgets/MyDrawer.dart';
import '../AdminConstant/AdminListData.dart';
import 'AdminEventHistoryPage.dart';
import 'AdminEventPage.dart';

class AdminHomePageView extends StatefulWidget {
  final String? id;
  const AdminHomePageView({Key? key, this.id}) : super(key: key);

  @override
  State<AdminHomePageView> createState() => _AdminHomePageViewState();
}

class _AdminHomePageViewState extends State<AdminHomePageView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(title: 'Admin HomePage',iconTheme: IconThemeData(color: Colors.white),),
      drawer: MyDrawer(context,isAdmin: true,id: widget.id.toString(),),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: adSliderImg.length,
            itemBuilder: (context, itemIndex, realIndex){
              return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 6,vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ],
                    image: DecorationImage(image: AssetImage(adSliderImg[itemIndex],),fit: BoxFit.cover,)
                ),
              );
            },
            options: CarouselOptions(
              height: 230,
              // aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,

            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button1(title: 'Post New Jobs',image: postJob,
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminPostJobPage())),
                            imageHeight: 50,imageWidth: 50),
                        Button1(title: 'Old Post Jobs', onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminOldPostPage())),image: find,imageHeight: 50,imageWidth: 50),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button1(title: 'Post Events',image:event,onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminEventPage()))),
                      Button1(image:hireEm,title: 'Event History',onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminEventHistoryPage()))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}


