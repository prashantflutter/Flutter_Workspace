// 51. Create an application to input 2 numbers from user and all numbers
// between those 2 numbers in next activity

import 'package:flutter/material.dart';

class NumberRangeScreen extends StatefulWidget {
  @override
  _NumberRangeScreenState createState() => _NumberRangeScreenState();
}

class _NumberRangeScreenState extends State<NumberRangeScreen> {
  TextEditingController _startController = TextEditingController();
  TextEditingController _endController = TextEditingController();
  List<int> numbers = [];

  void printNumbersBetween() {
    int start = int.tryParse(_startController.text) ?? 0;
    int end = int.tryParse(_endController.text) ?? 0;

    
    if (start <= end) {
      int last = end - 1;
      setState(() {
        numbers = List.generate(last - start, (index) => start + index +1);
      });
    }
    else if (start > end) {
      int last = end+1;
      setState(() {
        numbers = List.generate(start - last, (index) => start - index - 1);

      });
    }
      else {
      setState(() {
        numbers = [];
      });
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Invalid Range'),
            content: Text('The start value should be less than the end value.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range Printer'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Two Numbers between Value Printing',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green,fontWeight:FontWeight.w600 ,fontSize: 28.0),
              ),
              SizedBox(height: 24),
              TextField(
                controller: _startController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter start number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _endController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter end number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  onPressed: printNumbersBetween,
                  child: Text('Print Numbers'),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Numbers between: ${numbers.join(", ")}',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    super.dispose();
  }
}
