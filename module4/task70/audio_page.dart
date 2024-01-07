import 'package:flutter/material.dart';
import 'package:tops_tasks/modual4/task70/data_list.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: size.height,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20,),
                Text("New English Songs",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: size.width,
              height: size.width*0.8,
              color: Colors.brown.withOpacity(0.2),
              child: GridView.count(
                crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              children: List.generate(audioList.length, (index){
                return ListView.builder(
                    itemCount: audioNameList.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx,index){
                      return Expanded(
                        child: ListTile(
                          leading: Image.network(audioList[index]),
                          title:Text(audioNameList[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                          subtitle: Text(artistsNameList[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey),),
                          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
                        
                        ),
                      );
                    });
              }),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Quick picks",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: size.width,
              height: size.width*0.8,
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.horizontal,
                children: List.generate(audioList.length, (index){
                  return Column(
                    children: [
                      SizedBox(height: 8,),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(audioList[index]),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.play_circle,color: Colors.white,size: 30,),
                      ),
                      SizedBox(height: 5,),
                      SizedBox(
                        width: 145,
                          height: 20,
                          child: Text(audioNameList[index],textAlign: TextAlign.center,overflow: TextOverflow.clip,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),))
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
