
import 'package:flutter/material.dart';


class WellComePage extends StatelessWidget {
  const WellComePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.2),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20,),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border: Border.all(color: Colors.white,width: 5)
              ),
              child: Icon(Icons.person,color: Colors.white,size: 50,),
            ),
            SizedBox(height: 50,),
            Text("Successfully Login...",style: TextStyle(color:Colors.white,fontSize: 18),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.celebration_outlined,color: Colors.white,size: 50,),
                SizedBox(width: 15,),
                Icon(Icons.celebration_outlined,color: Colors.white,size: 50,),
                SizedBox(width: 15,),
                Icon(Icons.celebration_outlined,color: Colors.white,size: 50,),
                SizedBox(width: 15,),
                Icon(Icons.celebration_outlined,color: Colors.white,size: 50,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}