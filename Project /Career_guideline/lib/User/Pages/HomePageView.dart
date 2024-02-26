import 'package:careerguideline/AppConstant/AppTextStyle.dart';
import 'package:careerguideline/AppConstant/Appcolors.dart';
import 'package:careerguideline/Widgets/MyAppBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../AppConstant/AppList.dart';
import '../../Widgets/MyDrawer.dart';
import 'CourseDetailsPage.dart';

class HomePageView extends StatefulWidget {
  final String? id;
  const HomePageView({super.key, this.id});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(
        title: 'User Home Page',iconTheme: IconThemeData(color: Colors.white),),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, itemIndex, realIndex){
              return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 6,vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ],
                    image: DecorationImage(image: AssetImage(images[itemIndex],),fit: BoxFit.cover,)
                ),
              );
            },
            options: CarouselOptions(
              height: 200,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(courseNameList.length, (index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CourseDetailsPage(titleOfCourse: courseNameList[index], id: index,)));
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: pW,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: Offset(-2, 2)
                            ),
                          ],),
                        child: Text(courseNameList[index],style: titleStyle,textAlign: TextAlign.center,),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(context, id: widget.id.toString(),),
    );
  }

}
