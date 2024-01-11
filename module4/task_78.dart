import 'package:Chartered/screens/splash_screen_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final List<UserModel> _nameList = [];


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle textStyle = TextStyle(fontSize: size.height*0.016);
    final TextStyle subtitleStyle = TextStyle(fontSize: size.height*0.013);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('User Data add in List',style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width*0.45,
                child: TextField(
                  controller: _nameController,
                  cursorColor: Colors.blue.shade700,
                  decoration: InputDecoration(
                    labelText: ' Enter First Name ',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15)
                  ),
                ),
              ),
              Container(
                width: size.width*0.45,
                child: TextField(
                  controller: _lNameController,
                  cursorColor: Colors.blue.shade700,
                  decoration: InputDecoration(
                    labelText: ' Enter Last Name ',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15)
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width*0.45,
                child: TextField(
                  controller: _courseController,
                  cursorColor: Colors.blue.shade700,
                  decoration: InputDecoration(
                    labelText: ' Enter Course Name ',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15)
                  ),
                ),
              ),
              Container(
                width: size.width*0.45,
                child: TextField(
                  controller: _companyController,
                  cursorColor: Colors.blue.shade700,
                  decoration: InputDecoration(
                    labelText: ' Enter Company Name ',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue.shade700)
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15)
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.width * 0.06,),
          SizedBox(
            width: size.width * 0.4,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade700,elevation: 2),
              onPressed: () {
                if(_nameController.text.isEmpty || _lNameController.text.isEmpty||_companyController.text.isEmpty || _courseController.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please fill all details!',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.redAccent,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('successfully added user data...',style: TextStyle(color: Colors.white),),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,

                    ),
                  );
                  _addNameToList();
                  _nameController.clear();
                  _lNameController.clear();
                  _courseController.clear();
                  _companyController.clear();
                }

              },
              child: Text('Add to List',style: TextStyle(color: Colors.white),)
            ),
          ),
          SizedBox(height: size.width * 0.06,),
          _nameList.isNotEmpty?Row(
            children: [
              SizedBox(width: size.width * 0.05,),
              Text('Added Data : ',style:textStyle,),
            ],
          ):SizedBox(),
          Expanded(
            child: ListView.builder(
              itemCount: _nameList.length,
              itemBuilder: (context, index) {
                final mIndex = _nameList[index];
                return Container(
                  width: double.infinity,
                  // height: size.height*0.07,
                  margin: EdgeInsets.symmetric(horizontal: size.height*0.02,vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue.shade700,
                    )
                  ),
                  child: ListTile(
                    leading: Icon(Icons.account_circle_outlined,size: size.height*0.050,color: Colors.blue.shade700,),
                    title: Row(
                      children: [
                        Text(_nameList[index].fName,style:textStyle,),
                        SizedBox(width: 5,),
                        Text(_nameList[index].lName,style:textStyle,),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text("Course Name : ${_nameList[index].courseName}",style: subtitleStyle,),
                        SizedBox(width: 20,),
                        Text('Company Name : ${_nameList[index].companyName}',style: subtitleStyle,),
                      ],
                    ),

                    onTap: () {
                      _showNameDialog(mIndex.fName,mIndex.lName,mIndex.courseName,mIndex.companyName,context);
                    },
                    onLongPress: () {
                      _showContextMenu(context, mIndex.fName,mIndex.lName,mIndex.courseName,mIndex.companyName,index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _addNameToList() {
    String name = _nameController.text;
    if (name.isNotEmpty) {
      setState(() {
        // _nameList.add(name);
        _nameList.add(UserModel(_nameController.text, _lNameController.text, _courseController.text, _companyController.text));
        _nameController.clear();
      });
    }
  }

  void _showNameDialog(String name,String lastName,String course,String company,BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle textStyle = TextStyle(fontSize: size.height*0.016);
    final TextStyle subtitleStyle = TextStyle(fontSize: size.height*0.013);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          title: Text('Selected User'),
          content: Container(
            width: size.width-400,
            height: size.height*0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle_outlined,size: size.width*0.1,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,style: textStyle,),
                    Text(lastName,style: textStyle,),
                  ],
                ),
                SizedBox(height: 5,),
                Text('Course  Name : ${course}',style: subtitleStyle),
                SizedBox(height: 5,),
                Text('Company Name : ${company}',style: subtitleStyle),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK',style: TextStyle(color: Colors.blue.shade700)),
            ),
          ],
        );
      },
    );
  }

  void _showContextMenu(BuildContext context, String selectedFName,String selectedLName,String selectedCourse,String selectedCompany,int index) {
    final _editFNameController = TextEditingController(text: selectedFName);
    final _editLNameController = TextEditingController(text: selectedLName);
    final _editCourseController = TextEditingController(text: selectedCourse);
    final _editCompanyController = TextEditingController(text: selectedCompany);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Context Menu'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showDeleteConfirmationDialog(selectedFName,selectedLName,selectedCourse,selectedCompany);
                },
                child: Text('Delete Item',style: TextStyle(color: Colors.black)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showEditDialog(selectedFName,selectedLName,selectedCourse,selectedCompany, _editFNameController,_editLNameController,_editCourseController,_editCompanyController,index);
                },
                child: Text('Edit Item',style: TextStyle(color: Colors.black)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Exit',style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDeleteConfirmationDialog(String selectedFName,String selectedLName,String selectedCourse,String selectedCompany) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Item'),
          // actionsAlignment: MainAxisAlignment.center,
          content: Text('Are you sure want to delete \n$selectedFName $selectedLName?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No',style: TextStyle(color: Colors.blue.shade700)),
            ),
            TextButton(
              onPressed: () {
                _deleteItem(selectedFName,selectedLName,selectedCourse,selectedCompany);
                Navigator.pop(context);
              },
              child: Text('Yes',style: TextStyle(color: Colors.blue.shade700)),
            ),
          ],
        );
      },
    );
  }

  void _deleteItem(String selectedName,String selectedLName,String selectedCourse,String selectedCompany) {
    setState(() {
      _nameList.removeWhere((item) => item.fName == selectedName);
      _nameList.removeWhere((item) => item.lName == selectedLName);
      _nameList.removeWhere((item) => item.courseName == selectedCourse);
      _nameList.removeWhere((item) => item.companyName == selectedCompany);
    });
  }

  void _showEditDialog(String selectedFName,String selectedLName,String selectedCourse,String selectedCompany,TextEditingController editFNameController,TextEditingController editLNameController,TextEditingController editCourseController,TextEditingController editCompanyController,int index) {
    final size = MediaQuery.of(context).size;
    final TextStyle textStyle = TextStyle(fontSize: size.height*0.016);
    final TextStyle subtitleStyle = TextStyle(fontSize: size.height*0.013);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Update User Data'),
          content: Container(
            width: size.width-400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(controller: editFNameController),
                SizedBox(height: 10,),
                TextField(controller: editLNameController),
                SizedBox(height: 10,),
                TextField(controller: editCourseController),
                SizedBox(height: 10,),
                TextField(controller: editCompanyController),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel',style: TextStyle(color: Colors.blue.shade700)),
            ),
            TextButton(
              onPressed: () {
                _editItem(selectedFName, editFNameController.text,selectedLName, editLNameController.text,selectedCourse, editCourseController.text,selectedCompany, editCompanyController.text,index);
                Navigator.pop(context);
              },
              child: Text('Save',style: TextStyle(color: Colors.blue.shade700)),
            ),
          ],
        );
      },
    );
  }

  void _editItem(String oldFName, String newFName,String oldLName, String newLName,String oldCourse, String newCourse,String oldCompany, String newCompany,int mIndex) {
    setState(() {
      int index1 = _nameList[mIndex].fName.indexOf(oldFName);
      int index2 = _nameList[mIndex].lName.indexOf(oldLName);
      int index3 = _nameList[mIndex].courseName.indexOf(oldCourse);
      int index4= _nameList[mIndex].companyName.indexOf(oldCompany);
      _nameList[index1].fName = newFName;
      _nameList[index2].lName = newLName;
      _nameList[index3].courseName = newCourse;
      _nameList[index4].companyName = newCompany;
    });
  }

}

class UserModel{
  late String fName;
  late String lName;
  late String courseName;
  late String companyName;

  UserModel(this.fName, this.lName, this.courseName, this.companyName);
}
