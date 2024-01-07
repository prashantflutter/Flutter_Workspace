import 'package:flutter/material.dart';
import 'package:tops_tasks/modual4/task70/data_list.dart';


class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.count(
        crossAxisCount: 3,
      children: List.generate(galleryImages.length, (index){
        return Container(
          width: size.width*0.02,
          height: size.width*0.02,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(galleryImages[index],),fit: BoxFit.cover),
          ),
        );
      }),
    );
  }
}

