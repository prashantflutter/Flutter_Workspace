import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWithGrid extends StatefulWidget {
  const CarouselSliderWithGrid({super.key});

  @override
  State<CarouselSliderWithGrid> createState() => _CarouselSliderWithGridState();
}

class _CarouselSliderWithGridState extends State<CarouselSliderWithGrid> {

  List imagesList = [
    "https://images.slurrp.com/prod/rich_article/hyepog1em4i.webp?impolicy=slurrp-20210601&width=1200&height=675",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIzg7g9D04ylbmQfPcr9284oDPISsbFDGNgN-EqjVwHL-6avdC8ecoKnRQOoyg6jmPobM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlq-_pUHd0gTOerFSPu0kCMcxqEsSEwoHqaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbU2gF5Rp-Ei3ZItl9mVUW_iYKFFG91ZadoA&usqp=CAU"
  ];

  List imagesGridList = [
    "https://images.slurrp.com/prod/rich_article/hyepog1em4i.webp?impolicy=slurrp-20210601&width=1200&height=675",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIzg7g9D04ylbmQfPcr9284oDPISsbFDGNgN-EqjVwHL-6avdC8ecoKnRQOoyg6jmPobM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlq-_pUHd0gTOerFSPu0kCMcxqEsSEwoHqaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbU2gF5Rp-Ei3ZItl9mVUW_iYKFFG91ZadoA&usqp=CAU",
    "https://images.slurrp.com/prod/rich_article/hyepog1em4i.webp?impolicy=slurrp-20210601&width=1200&height=675",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIzg7g9D04ylbmQfPcr9284oDPISsbFDGNgN-EqjVwHL-6avdC8ecoKnRQOoyg6jmPobM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlq-_pUHd0gTOerFSPu0kCMcxqEsSEwoHqaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbU2gF5Rp-Ei3ZItl9mVUW_iYKFFG91ZadoA&usqp=CAU",
    "https://images.slurrp.com/prod/rich_article/hyepog1em4i.webp?impolicy=slurrp-20210601&width=1200&height=675",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIzg7g9D04ylbmQfPcr9284oDPISsbFDGNgN-EqjVwHL-6avdC8ecoKnRQOoyg6jmPobM&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlq-_pUHd0gTOerFSPu0kCMcxqEsSEwoHqaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbU2gF5Rp-Ei3ZItl9mVUW_iYKFFG91ZadoA&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("00"),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: imagesList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber
                      ),
                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          ),
          Expanded(
              child: GridView.builder(
                itemCount: imagesGridList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context,index){
                return Container(
                  child: Column(
                    children: [
                      Image.network(imagesGridList[index]),
                    ],
                  ),
                );
                  }),
          ),
        ],
      ),
    );
  }
}
