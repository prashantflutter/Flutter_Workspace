import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuPage extends StatefulWidget{
  @override
  State createState() => MenuPageState();

}

class MenuPageState extends State<MenuPage> {

  bool one = false;
  bool two = false;
  bool three = false;
  bool four = false;
  var total=0;
  var amount=0;
  var data="";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("MenuPage"),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(width:50,height:50,child: Image.asset('images/gathiya.jpg')),
                SizedBox(width: 10,),
                Expanded(
                  child: CheckboxListTile(
                      title: Text("Gathiya"),
                      subtitle: Text("Gathiya- a deep-fried snack made of chickpea flour"),
                      value: one,
                      onChanged: (val){
                        if(val == true){
                          one = val!;
                          this.amount += 50;
                          this.data +="\n Gathiya @ Rs.50";
                        }else{
                          one = val!;
                          this.amount -= 50;
                          this.data +="\n Gathiya @ Rs.50";
                        }

                        setState(() {});
                      }),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(width:50,height:50,child: Image.asset('images/khakra.jpg')),
                SizedBox(width: 10,),
                Expanded(
                  child: CheckboxListTile(
                      title: Text("Khakhra"),
                      subtitle: Text("Crispy Flatbread Gujarati Food"),
                      value: two,
                      onChanged: (val){
                        if(val == true){
                          two = val!;
                          this.amount += 150;
                          this.data +="\n Khakhra @ Rs.150";
                        }else{
                          two = val!;
                          this.amount -= 150;
                          this.data +="";
                        }

                        setState(() {});
                      }),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(width:50,height:50,child: Image.asset('images/khandvi.jpg')),
                SizedBox(width: 10,),
                Expanded(
                  child: CheckboxListTile(
                      title: Text("Khandvi"),
                      subtitle: Text("Khandvi is one of the most likable Gujarati breakfast recipes a person can have."),
                      value: three,
                      onChanged: (val){
                        if(val==true){
                          three = val!;
                          this.amount += 250;
                          this.data +="\n Khandvi @ Rs.250";
                        }else{
                          three = val!;
                          this.amount -= 250;
                          this.data +="";

                        }
                        setState(() {});

                      }),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(width:50,height:50,child: Image.asset('images/dhokla.jpg')),
                SizedBox(width: 10,),
                Expanded(
                  child: CheckboxListTile(
                      title: Text("Dhokla"),
                      subtitle: Text("Gujarati cuisine lovers to eat Dhokla"),
                      value: four,
                      onChanged: (val){
                      if(val == true){
                        four = val!;
                        this.amount += 100;
                        this.data +="\n Dhokla @ Rs.100";
                      }else{
                        four = val!;
                        this.amount -= 100;
                        this.data +="";
                      }
                        setState(() {});
                      }),
                ),
              ],
            ),
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
                print("\n Bill \n $data \n Total: $amount");
            }, child: Text('Oder Food'),),
            ElevatedButton(
              onPressed: (){
                exitNow();
              }, child: Text('Exit App'),),
          ],
        ),
      ),
    );
  }

  void exitNow(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5,),
                Container(width:25,height: 2,color: Colors.black,),
                SizedBox(height: 15,),
                Text("Are you sure want to exit?"),
                Divider(color: Colors.black,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        SystemNavigator.pop();
                      }, child: Text('Yes'),),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text('No'),),
                  ],
                )
              ],
            ),

          );
        });
  }
}
