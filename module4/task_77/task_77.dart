import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallSmsTaskPage extends StatefulWidget {
  @override
  stateCallSmsTaskPage createState() => stateCallSmsTaskPage();
}

class stateCallSmsTaskPage extends State<CallSmsTaskPage> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _smsController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();


  void makePhoneCall(String number) async {
    String phoneNumber = "tel:+$number";
    print('phoneNumber ==> $phoneNumber');
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      print('Could not launch $phoneNumber');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Call & SMS', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width * 0.4,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade700, elevation: 2),
                onPressed: () {
                  _showContextMenu(context, true);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.sms_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      'SMS Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width * 0.4,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade700, elevation: 2),
                onPressed: () {
                  _showContextMenu(context, false);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      'Call Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showContextMenu(BuildContext context, bool isEmail) {
    final size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
                title: Text('Send Email Now'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    isEmail?Container(
                      width: size.width * 0.45,
                      child: TextField(
                        controller: _smsController,
                        cursorColor: Colors.blue.shade700,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: ' Enter Email',
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue.shade700)),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue.shade700)),
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                      ),
                    ):Container(
                      width: size.width * 0.45,
                      child: TextField(
                        controller: _numberController,
                        cursorColor: Colors.blue.shade700,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: ' Enter Number',
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue.shade700)),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue.shade700)),
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    isEmail?Container(
                      width: size.width * 0.45,
                      child: TextField(
                        controller: _subjectController,
                        cursorColor: Colors.blue.shade700,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: ' Enter Subject',
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue.shade700)),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.blue.shade700)),
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 30)),
                      ),
                    ):Container(),
                    isEmail?SizedBox(
                      height: 20,
                    ):Container(),
                    isEmail?ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 2, backgroundColor: Colors.blue),
                      onPressed: () {
                        if (_smsController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'please enter phone number?',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.redAccent,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        } else {
                          Navigator.pop(context);
                          sandeMail(_smsController.text, _subjectController.text);
                          _smsController.clear();
                          _subjectController.clear();
                        }
                      },
                      child: Text('Send Email Now', style: TextStyle(color: Colors.white)),
                    ): ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 2, backgroundColor: Colors.blue),
                      onPressed: () {
                        if (_numberController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'please enter phone number?',
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.redAccent,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        } else {
                          Navigator.pop(context);
                          makePhoneCall(_numberController.text);
                          _numberController.clear();
                        }
                      },
                      child: Text('Call Now', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              );
      },
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
  }

  void sandeMail(String emailId, String subject) async {
    Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailId,
      query: encodeQueryParameters(<String, String>{
        'subject': '$subject',
      }),
    );
    launchUrl(emailLaunchUri);
  }
}
