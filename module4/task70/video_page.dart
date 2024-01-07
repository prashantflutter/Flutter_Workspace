import 'package:flutter/material.dart';

import 'data_list.dart';


class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Container(
      width: size.width,
      height: size.height,
      color: Colors.black,
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            audioList.length, (index){
          return Container(
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(audioList[index]),fit: BoxFit.cover)
            ),
            child: Icon(Icons.play_circle_outline,size: 45,color: Colors.white,),

          );
        }),
      ),
    );
  }
}
