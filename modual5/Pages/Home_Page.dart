import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project1/modual5/Constant/AppColors.dart';
import 'package:project1/modual5/Constant/AppStyle.dart';
import 'package:project1/modual5/Database/database.dart';
import 'package:project1/modual5/Pages/UserData_Page.dart';

import '../Constant/CustomWidgets.dart';

enum SampleItem { itemOne, itemTwo, itemThree }
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateInputController = TextEditingController();
  TextEditingController timeInputController = TextEditingController();
   SampleItem? selectedMenu;
   bool isComplete = false;
  List<Map<String,dynamic>> getUserDataList = [];

  Future<void>refreshUserData()async{
    final userData = await SQLiteDatabase.getAllData();
    setState(() {
      getUserDataList = userData;
    });
  }


  Future<void>deleteUserData(int id)async{
    await SQLiteDatabase.deleteData(id);
    refreshUserData();
  }

  Future<void>userDataUpdate(int id,String name,String desc,String priority,String picDate,String picTime)async{
    await SQLiteDatabase.updateData(id, name, desc, priority, picDate, picTime);
  }

  @override
  void initState() {
    refreshUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home Page',style: CustomStyle.AppStyle(color: Colors.white,fontSize: 18)),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> UserDataEnterPage()));
          }, icon: Icon(Icons.add,color: Colors.white,))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width*0.02),
        child: ListView.builder(
          itemCount: getUserDataList.length,
            itemBuilder: (context,index){
            final mainIndex = getUserDataList[index];
            var priority = mainIndex['priority'];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTile(
                id: mainIndex['id'],
                color: isComplete?greyColor:priority == 'High'?Colors.red: priority == 'Medium'?primeColor:priority == 'Low'?Colors.green:white,
                // priorityColor: priority == 'High'?Colors.red.shade900: priority == 'Medium'?Colors.blue.shade900:priority == 'Low'?Colors.green.shade900:white,
                priorityColor: white,
                priority: priority,
                userName: mainIndex['name'],
                description: mainIndex['desc'],
                date: mainIndex['picDate'],
                time: mainIndex['picTime']),
            );
        }),
      ),
    );
  }

  Widget CustomTile({required int id,required Color color,required Color priorityColor,required String priority,required String userName,required String description,required String date,required String time}){
    return InkWell(
      onLongPress: (){
        showTaskComplete();
      },
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
            ),
            child: Text(priority,style: CustomStyle.AppStyle(color: priorityColor,fontSize: 14,fontWeight: FontWeight.w500),),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName,style: CustomStyle.AppStyle(color: primeColor,fontSize: 18),),
                // SizedBox(height: 2,),
                Text('Date : $date',textAlign: TextAlign.right,style: CustomStyle.AppStyle(color: greyColor,fontSize: 10),),
                Text('Time :$time',textAlign: TextAlign.right,style: CustomStyle.AppStyle(color: greyColor,fontSize: 10),),
                SizedBox(height: 2,),
                Text(description,maxLines: 4,textAlign: TextAlign.left,style: CustomStyle.AppStyle(color: greyColor,fontSize: 10),),
              ],
            ),
          ),
          Center(
            child: PopupMenuButton<SampleItem>(
              iconColor: greyColor,
              initialValue: selectedMenu,
              onSelected: (SampleItem item) {
                setState(() {
                  selectedMenu = item;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                 PopupMenuItem<SampleItem>(
                  value: SampleItem.itemOne,
                  child: Text('Edit'),
                  onTap: (){
                    showUserUpdate(userName: userName, description: description, priority: priority, oldDate: date, oldTime: time);
                  },
                ),
                 PopupMenuItem<SampleItem>(
                  value: SampleItem.itemTwo,
                  onTap: (){
                    showDeleteUserData(id, userName);
                  },
                  child: Text('Delete'),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }


  showUserUpdate({required String userName,required String description,required String priority,
    required String oldDate,required String oldTime}){
    showDialog(context: context, builder: (context){
      final size = MediaQuery.of(context).size;
      return Dialog(
        child: Container(
          height: size.height-100,
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Icon(Icons.account_circle_outlined,color: primeColor,size: 50,),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 10),
                child: Text('$userName Data Update',style: CustomStyle.AppStyle(color: Colors.black,),),
              ),
              CustomTitle(title: 'Name Update'),
              CustomTextField(controller: nameController, hintText: userName,),
              CustomTitle(title: 'Description Update'),
              CustomTextField(controller: nameController, hintText: description,),
              CustomTitle(title: 'Priority : '),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomRadioButton(
                      title: 'High',
                      value: 'High',
                      groupValue: priority,
                      onChanged: (value){
                        setState(() {
                          priority = value!;
                        });
                      }),
                  CustomRadioButton(
                      title: 'Medium',
                      value: 'Medium',
                      groupValue: priority,
                      onChanged: (value){
                        setState(() {
                          priority = value!;
                        });
                      }),
                  CustomRadioButton(
                      title: 'Low',
                      value: 'Low',
                      groupValue: priority,
                      onChanged: (value){
                        setState(() {
                          priority = value!;
                        });
                      }),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(title: 'Date Update'),
                      Container(
                          child:Center(
                              child:TextField(
                                controller: dateInputController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.calendar_today,color: primeColor,),
                                  hintText: oldDate,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(color: primeColor)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(color: primeColor)
                                  ),
                                ),
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context, initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2101)
                                  );

                                  if(pickedDate != null ){
                                    print(pickedDate);
                                    String formattedDate = DateFormat('dd-MM-yyy').format(pickedDate);
                                    print(formattedDate);
                                    setState(() {
                                      dateInputController.text = formattedDate;
                                    });
                                  }else{
                                    print("Date is not selected");
                                  }
                                },
                              )
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(title: 'Time Update'),
                      Container(
                          child:Center(
                              child:TextField(
                                controller: timeInputController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.watch_later_outlined,color: primeColor,),
                                  hintText: oldTime,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(color: primeColor)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(color: primeColor)
                                  ),
                                ),
                                readOnly: true,
                                onTap: () async {
                                  TimeOfDay? pickedTime =  await showTimePicker(
                                    initialTime: TimeOfDay.now(),
                                    context: context,
                                  );

                                  if(pickedTime != null ){
                                    print(pickedTime.format(context));
                                    DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                                    print(parsedTime);
                                    DateTime dateTime = DateTime(2022, 1, 1, pickedTime.hour, pickedTime.minute);
                                    setState(() {
                                      timeInputController.text = DateFormat('h:mm a').format(dateTime);;
                                    });

                                  }else{
                                    print("Time is not selected");
                                  }
                                },
                              )
                          )
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width:  size.width*0.6,
                margin: EdgeInsets.only(top: size.height*0.035),
                child: ElevatedButton(onPressed: ()async{
                  print('UserName == ${nameController.text} == Description == ${descController.text} == priority == $priority  == oldDate == ${dateInputController.text} == oldTime == ${timeInputController.text}');
                  await SQLiteDatabase.createData(nameController.text, descController.text,priority, dateInputController.text, timeInputController.text);
                  refreshUserData();
                  Navigator.of(context).pop();
                  CustomDialog(context: context, title: 'Successfully update userData...',icon: Icons.file_download_done);
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primeColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),elevation: 1.5),
                    child: Text('Update',style: CustomStyle.AppStyle(color: Colors.white,),)),
              )
            ],
          ),
        ),
      );
    });
  }


  showDeleteUserData(int id,String userName){
    showDialog(context: context, builder: (context){
      final size = MediaQuery.of(context).size;
      return Dialog(
        child: Container(
          height: size.height*0.25,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.account_circle_outlined,color: primeColor,size: 50,),
              ),
              Text('Are sure want to delete',style: CustomStyle.AppStyle(color: Colors.black,),),
              Text('$userName Data?',style: CustomStyle.AppStyle(color: Colors.black,),),
              Container(
                width:  size.width*0.6,
                margin: EdgeInsets.only(top: size.height*0.035),
                child: ElevatedButton(onPressed: ()async{
                  print('Userid $id ');
                  await SQLiteDatabase.deleteData(id);
                  refreshUserData();
                  Navigator.of(context).pop();
                  CustomDialog(context: context, title: 'Successfully update userData...',icon: Icons.file_download_done);
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primeColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),elevation: 1.5),
                    child: Text('Delete',style: CustomStyle.AppStyle(color: Colors.white,),)),
              )
            ],
          ),
        ),
      );
    });
  }

  showTaskComplete(){
    showDialog(context: context, builder: (context){
      final size = MediaQuery.of(context).size;
      return Dialog(
        child: Container(
          height: size.height*0.25,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.account_circle_outlined,color: primeColor,size: 50,),
              ),
              Text('Are sure want to complete this',style: CustomStyle.AppStyle(color: Colors.black,),),
              Text('complete this task?',style: CustomStyle.AppStyle(color: Colors.black,),),
              Container(
                width:  size.width*0.6,
                margin: EdgeInsets.only(top: size.height*0.035),
                child: ElevatedButton(onPressed: ()async{

                  // await SQLiteDatabase.deleteData(id);
                  // refreshUserData();

                  setState(() {
                    isComplete = true;
                  });
                  print('isComplete $isComplete');
                  Navigator.of(context).pop();
                  CustomDialog(context: context, title: 'Successfully complete task...',icon: Icons.file_download_done);
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primeColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),elevation: 1.5),
                    child: Text('Complete',style: CustomStyle.AppStyle(color: Colors.white,),)),
              )
            ],
          ),
        ),
      );
    });
  }

}
