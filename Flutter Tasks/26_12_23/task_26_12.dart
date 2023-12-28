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

  List foodList = ["Thepla", "Khandvi", "Undhiyu", "Handvo", "Dal Dhokli","Patra", "Muthiya", "Bhakri", "Khaman", "Khichdi", "Dabeli", "Sev Khamni"];
  List priceList = ["100", "250", "50", "200", "80","50", "60", "125", "160", "180", "20", "45"];
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
          // CarouselSlider(
          //     items:imagesList.map((i) {
          //       return Builder(
          //         builder: (BuildContext context) {
          //           return Container(
          //             width: 200,
          //             margin: EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: BoxDecoration(
          //                 image: DecorationImage(image: NetworkImage(imagesList[i].toString()))
          //             ),
          //             // child: Image.network(imagesGridList[i])
          //           );
          //         },
          //       );
          //     }).toList(),
          //     options: CarouselOptions(
          //       height: 400,
          //       aspectRatio: 16/9,
          //       viewportFraction: 0.8,
          //       initialPage: 0,
          //       enableInfiniteScroll: true,
          //       reverse: false,
          //       autoPlay: true,
          //       autoPlayInterval: Duration(seconds: 3),
          //       autoPlayAnimationDuration: Duration(milliseconds: 800),
          //       autoPlayCurve: Curves.fastOutSlowIn,
          //       enlargeCenterPage: true,
          //       enlargeFactor: 0.3,
          //       // onPageChanged: callbackFunction,
          //       scrollDirection: Axis.horizontal,
          //     )
          // ),


          CarouselSlider(
            items: [

              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.slurrp.com/prod/rich_article/hyepog1em4i.webp?impolicy=slurrp-20210601&width=1200&height=675",),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIzg7g9D04ylbmQfPcr9284oDPISsbFDGNgN-EqjVwHL-6avdC8ecoKnRQOoyg6jmPobM&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlq-_pUHd0gTOerFSPu0kCMcxqEsSEwoHqaA&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbU2gF5Rp-Ei3ZItl9mVUW_iYKFFG91ZadoA&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.easeInBack,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),),
          SizedBox(height: 15,),
          Expanded(
            child: GridView.builder(
                itemCount: imagesGridList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          width:double.infinity,
                            height: 100,
                            child: Image.network(imagesGridList[index],fit: BoxFit.cover,)),
                        SizedBox(height: 5,),
                        Text(foodList[index],style: TextStyle(fontSize: 15),),
                        Text("Price \$${priceList[index]}",style: TextStyle(fontSize: 12),),

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
