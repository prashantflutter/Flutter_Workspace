// 56. Write a program to show four images around Textview.

import 'package:flutter/material.dart';
class ImageShowPage extends StatelessWidget {
  const ImageShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String p1 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnOmVnXBJvbSJsCnhA-JoXyr0ciov06a8grg&usqp=CAU";
    String p2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHNZE447MSI_nxX84OMUBp_WxSPaWMV4hJyw&usqp=CAU";
    String p3 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh3H9AdfZ3Q7mK7gHH36WYuUl6s9aWgv2nEA&usqp=CAU";
    String p4 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn3_tN0y0-b253peoczNWdeQC8DOmrr3xnIw&usqp=CAU";
    /// Second Method for Task
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(p1,width: 100,height: 100,fit: BoxFit.fill,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(p2,width: 100,height: 100,fit: BoxFit.fill,),
              SizedBox(width: 15,),
              Text("Flutter",style: TextStyle(fontSize: 25),),
              SizedBox(width: 15,),
              Image.network(p3,width: 100,height: 100,fit: BoxFit.fill,),
            ],
          ),
          Image.network(p4,width: 100,height: 100,fit: BoxFit.fill,),

        ],
      ),
    );
 //////////////////////////////////////////////////////////////////////////////////////////////

    /// Second Method for Task
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Image.network(
    //          p1,
    //           width: 100,
    //           height: 100,
    //           fit: BoxFit.fill,
    //         ),
    //         SizedBox(width: 20),
    //         Image.network(
    //          p2,
    //           width: 100,
    //           height: 100,
    //           fit: BoxFit.fill,
    //         ),
    //       ],
    //     ),
    //     SizedBox(height: 20),
    //     Text(
    //       'Flutter Development',
    //       style: TextStyle(fontSize: 20),
    //     ),
    //     SizedBox(height: 20),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Image.network(
    //           p3,
    //           width: 100,
    //           height: 100,
    //           fit: BoxFit.fill,
    //         ),
    //         SizedBox(width: 20),
    //         Image.network(
    //          p4,
    //           width: 100,
    //           height: 100,
    //           fit: BoxFit.fill,
    //         ),
    //       ],
    //     ),
    //   ],
    // );

    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// Third Method for Task
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       Positioned(
    //           top: 1,
    //           right: 1,
    //           left: 1,
    //           bottom: 1,
    //           child: Text("Flutter Developer",style: TextStyle(fontSize: 20),),),
    //       Positioned(
    //         top: 50,
    //         right: 0,
    //         left: 0,
    //         bottom: 0,
    //         child: Image.network(p1,)),
    //       Positioned(
    //         top: 0,
    //         right: 50,
    //         left: 0,
    //         bottom: 0,
    //         child: Image.network(p2,),),
    //       Positioned(
    //         top: 0,
    //         right: 0,
    //         left: 50,
    //         bottom: 0,
    //         child: Image.network(p3,),),
    //       Positioned(
    //         top: 0,
    //         right: 0,
    //         left: 0,
    //         bottom: 50,
    //         child: Image.network(p4,),),
    //     ],
    //   ),
    // );
  }
}
