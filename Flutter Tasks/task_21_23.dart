import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLO7XmanO7Ox2x6mmKbsGZpI5QsSmLnBzmQg&usqp=CAU";
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Flutter Logo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Image.network(img,width: 250,height: 250,),
            SizedBox(height: 20,),
            SizedBox(
              width: 150,
              height: 55,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                print("Well to the Second Page");
              }, child: Text("Next",style: TextStyle(fontSize: 16),)),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img1 = "https://logowik.com/content/uploads/images/google-dart2862.jpg";
    String img2 = "https://mlsb5edd0ks1.i.optimole.com/cb:q7B0.63723/w:502/h:518/q:mauto/f:best/https://keytotech.com/wp-content/uploads/2019/05/firebase.png";
    String img3 = "https://i.pinimg.com/originals/4e/76/b1/4e76b1df33309589017700b6f8baa1dc.png";
    String img4 = "https://1000logos.net/wp-content/uploads/2017/02/iOS-Logo-2013.jpg";
    String img5 = "https://www.ecranmobile.fr/photo/art/default/68211900-48045832.jpg?v=1666439488";

    String dec1 = "Dart is a client-optimized language for developing fast apps on any platform. Its goal is to offer the most productive programming language for multi-platform development, paired with a flexible execution runtime platform for app frameworks.";
    String dec2 = "Firebase provides detailed documentation and cross-platform app development SDKs, to help you build and ship apps for iOS, Android, the web, Flutter, Unity, and C++. Integrating it into your app is easy.";
    String dec3 = "Android Studio provides a complete IDE, including an advanced code editor and app templates. It also contains tools for development, debugging, testing, and performance that make it faster and easier to develop apps.";
    String dec4 = "An iOS developer is someone with an in-depth understanding of the iOS ecosystem, including a deep understanding of how it works on different Apple devices such as the iPad, iPhone, Apple Watch, and Apple TV. In short, they must understand how to build and customize apps in the iOS ecosystem.";
    String dec5 = "As we all know the major difference between App Store & Play Store. At one side App store is only used to produce IOS applications which come in iPhone and at other side Play store produces only Android applications which come in Android smartphones.";


    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text('Dart Logo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionPage(image: img1, dec: dec1,)));
                },
                  child: Image.network(img1,width: 200,height: 200,)),
              SizedBox(height: 30,),
              Text('Firebase Logo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionPage(image: img2,dec: dec2)));
              },child: Image.network(img2,width: 200,height: 200,)),
              SizedBox(height: 30,),
              Text('Android Logo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionPage(image: img3,dec: dec3)));
              },child: Image.network(img3,width: 200,height: 200,),),
              SizedBox(height: 30,),
              Text('ios Logo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionPage(image: img4,dec: dec4)));
              },child:  Image.network(img4,width: 200,height: 200,),),
              SizedBox(height: 30,),
              Text('Play Store & App Store Logo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionPage(image: img5,dec: dec5)));
              },child: Image.network(img5,width: 200,height: 200,),),
              SizedBox(height: 30,),
              SizedBox(
                width: 150,
                height: 55,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                  print("Back to the First Page");
                }, child: Text("Back",style: TextStyle(fontSize: 16),),),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}


class DescriptionPage extends StatelessWidget {
  final String image;
  final String dec;
  const DescriptionPage({Key? key, required this.image, required this.dec}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Description"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Image.network(image,width: 150,height: 150,),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent.shade700,width: 3),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text(dec,style:TextStyle(color: Colors.black,fontSize: 18) ,))
        ],
      ),
    );
  }
}
  

