// 66. Write a code to select Date on button's click event


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class PickerDatePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PickerDatePage();
  }
}

class _PickerDatePage extends State<PickerDatePage>{
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("DatePicker on TextField",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body:Container(
            padding: EdgeInsets.all(15),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child:TextField(
                      controller: dateInput,
                      decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today,color: Colors.blueAccent.shade700,),
                          labelText: "Enter Date",
                        labelStyle: TextStyle(color:Colors.blueAccent.shade700),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                          color: Colors.blueAccent.shade700,
                          ),
                        ),
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context, initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          builder: (context,child){
                              return Theme(data:  Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: Colors.white, // header background color
                                    onPrimary: Colors.blueAccent.shade700, // header text color
                                    onSurface: Colors.blueAccent.shade700, // body text color
                                  ),textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black, // button text color
                                 ),
                              ),
                            ), child: child!);
                          }
                        );

                        if(pickedDate != null ){
                          print(pickedDate);
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(formattedDate);

                          setState(() {
                            dateInput.text = formattedDate;
                          });
                        }else{
                          print("Date is not selected");
                        }
                      },
                    )
                ),
                SizedBox(height: 50,),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (){
                        logout();
                      }, child: Text("Selected Date",style: TextStyle(color: Colors.white),)),
                ),
              ],
            )
        )
    );
  }

  logout(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("You Selected Date is ${dateInput.text}.",textAlign: TextAlign.center,),
        titlePadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("Ok",style: TextStyle(color: Colors.white),))
        ],
      );
    });
  }

}