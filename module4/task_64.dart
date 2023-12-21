// 64. Write a code to display alert dialog with list of cities and Single
// choice selection display selected city in TextView

import 'package:flutter/material.dart';

enum cityList{Ahmedabad,Baroda,GandhiNagar,Surat,Rajkot}

class SelectionCityPage extends StatefulWidget{
  @override
  State<SelectionCityPage> createState() => SelectionCityPageState();
}

class SelectionCityPageState extends State<SelectionCityPage> {
  cityList selectedCity = cityList.Ahmedabad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Selection display selected city",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  onPressed: ()async{
                    // final cityList? prodName = await citySelection();
                    // print("Selected Product is $prodName");
                    showCitySelectionDialog();
                  },
                  child: Text("select city",style: TextStyle(color: Colors.white),)),
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 300,
            height: 55,
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
                child: Center(child: Text("Selected Product is ${selectedCity.toString().substring(9)}",style: TextStyle(fontSize: 16,color: Colors.white),))),
          ),
        ],
      ),
    );
  }
  
  void showCitySelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select a City"),
          content: Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: cityList.values.map((cityList city) {
                return ListTile(
                  title: Text(city.toString().substring(9)), // Remove 'CityName.'
                  leading: Radio(
                    value: city,
                    groupValue: selectedCity,
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value!;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("selected city is ${selectedCity.toString().substring(9)}",style: TextStyle(color: Colors.white),),
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                      Navigator.of(context).pop();
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

}
