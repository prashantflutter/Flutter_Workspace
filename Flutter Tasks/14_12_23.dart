import 'package:flutter/material.dart';

class AllDialogsPage extends StatefulWidget {
  const AllDialogsPage({super.key});

  @override
  State<AllDialogsPage> createState() => _AllDialogsPageState();
}

class _AllDialogsPageState extends State<AllDialogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("All Dialogs Show",style: TextStyle(color: Colors.white),),),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            SizedBox(
              width: 150,
              height: 45,
              child: ElevatedButton(
                  onPressed: (){
                    FirstDialog();
                  },
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1.5,
                      ),
                  ),
                  child: Text("First Dialog",style: TextStyle(color: Colors.blue),)),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 150,
              height: 45,
              child: ElevatedButton(
                  onPressed: (){
                    SecondDialog();
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    ),
                  ),
                  child: Text("Second Dialog",style: TextStyle(color: Colors.blue),)),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 150,
              height: 45,
              child: ElevatedButton(
                  onPressed: (){
                    ThirdDialog();
                    },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    ),
                  ),
                  child: Text("Third Dialog",style: TextStyle(color: Colors.blue),)),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 150,
              height: 45,
              child: ElevatedButton(
                  onPressed: (){
                    FourDialog();
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    ),
                  ),
                  child: Text("Four Dialog",style: TextStyle(color: Colors.blue),)),
            ),
          ],
        ),
      ),
    );
  }



  void FirstDialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text("Tops Technologies ",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700)),
        content: Text("As Flutter App Development Student",textAlign: TextAlign.center),
        actionsAlignment:MainAxisAlignment.center ,
        actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 100,
              height: 45,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.blue, width: 1.5,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  ),
                  child: Text("No",style: TextStyle(color: Colors.blue),)),
            ),
            SizedBox(
              width: 100,
              height: 45,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("You are Flutter Application Developer",style: TextStyle(color: Colors.white),))
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                  ),
                  child: Text("Yes",style: TextStyle(color: Colors.white),)),
            ),
          ],
        )
        ],
      );
    });
  }

  void SecondDialog(){
    showDialog(context: context, builder: (context){
      return SimpleDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        children: [
          Container(
            height: 20,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){Navigator.of(context).pop();},
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.close,size: 18,),),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Text("RFLUTTER ALERT",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
          SizedBox(height: 5,),
          Text("Flutter batter with RFlutter Alert.",textAlign: TextAlign.center),
          SizedBox(height: 20,),
          Container(
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                  ),
                ),
                child: Text("CANCEL",style: TextStyle(color: Colors.white),)),
          ),

        ],
      );
    });
  }

  void ThirdDialog(){
    showDialog(context: context, builder: (context){
      return SimpleDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        children: [
          Container(
            height: 20,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: (){Navigator.of(context).pop();},
                    highlightColor: Colors.transparent,
                  icon: Icon(Icons.close,size: 18,),),
              ],
            ),
          ),
          Icon(Icons.info_outline,color: Colors.amberAccent,size: 80,),
          SizedBox(height: 20,),
          Text("RFLUTTER ALERT",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500)),
          SizedBox(height: 5,),
          Text("Flutter batter with RFlutter \nAlert.",textAlign: TextAlign.center),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 35,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("FLAT",style: TextStyle(color: Colors.white),))
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Text("FLAT",style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(width: 10,),
              SizedBox(
                width: 120,
                height: 35,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("GRADIANT",style: TextStyle(color: Colors.white),))
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text("GRADIANT",style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
          SizedBox(height: 20,),

        ],
      );
    });
  }

  void FourDialog(){
    showDialog(context: context, builder: (context){
      return SimpleDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        children: [
          Container(
            height: 20,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (){Navigator.of(context).pop();},
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.close,size: 18,),),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Text("LOGIN",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.person_2_outlined),
                hintText: "UserName"
             ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                  ),
                ),
                child: Text("LOGIN",style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(height: 20,),

        ],
      );
    });
  }
}
