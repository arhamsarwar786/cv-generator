import 'dart:convert';

import 'package:cv/credentials.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cv/cvscreen.dart';
import 'package:cv/personal_info.dart';
import 'package:cv/skills.dart';
import 'package:cv/widget.dart';

class AddEducation extends StatefulWidget {
  @override
  State<AddEducation> createState() => _AddEducationState();
}

class _AddEducationState extends State<AddEducation> {
  var levelController = TextEditingController();

  var insituteController = TextEditingController();

  var startingController = TextEditingController();

  var endingController = TextEditingController();

  var detailsController = TextEditingController();

  setAddEducation() async {
    var pref = await SharedPreferences.getInstance();
    pref.setString(EDUCATION, jsonEncode(selectedData));    
  }

  getAddEducation() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString(EDUCATION);
      print(data);
    if (data != null) {
      var myData = jsonDecode(data);
      // roleController.text = myData['role'];
    }
  }

  @override
  void initState() {
    super.initState();
    // getAddEducation();
  }

  List selectedData = [];

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          if (levelController.text.isEmpty) {
            snack(context, "Please Enter the Level");
          } else if (insituteController.text.isEmpty) {
            snack(context, "Please enter the Name");
          } else if (startingController.text.isEmpty) {
            snack(context, "Please enter the Email");
          } else if (endingController.text.isEmpty) {
            snack(context, "Please Enter the Phone Number");
          } else if (detailsController.text.isEmpty) {
            snack(context, "Please Enter the Role Play");
          } else {
            setState(() {
              var data = {
                "level": levelController.text,
                "insitute": insituteController.text,
                "starting": startingController.text,
                "ending": endingController.text,
                "details": detailsController.text,
              };

              selectedData.add(data);  

              levelController.clear();
              insituteController.clear();
              startingController.clear();
              endingController.clear();
              detailsController.clear();
            });
          }
        },
      ),
      backgroundColor: Color(0xff6B59D3),
      body: Center(
        //main container....
        child: Container(
          width: Size.width * .90,
          height: Size.height * .90,
          color: Color(0xffFFFFFF),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //1con..
                      Container(
                        child: Center(
                            child: Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      //1line cont...
                      Container(
                        height: 3,
                        width: 50,
                        color: Color(0xff6B59D3),
                      ),
                      //2con..
                      Container(
                        child: Center(
                            child: Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      //3line cont...
                      Container(
                        height: 3,
                        width: 50,
                        color: Color(0xff6B59D3),
                      ),
                      //3con..
                      Container(
                        child: Center(
                            child: Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          // color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        height: 3,
                        width: 50,
                        color: Colors.black12,
                        // color: Color(0xff6B59D3),
                      ),
                      // 4container...
                      Container(
                        child: Center(
                            child: Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          // color: Color(0xff6B59D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "ADD EDUCATION",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //1col txtf
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Level",
                        style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Size.width * .50,
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: levelController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //2colum text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Insitute",
                        style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Size.width * .50,
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: insituteController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //3colum text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting",
                        style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Size.width * .50,
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: startingController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //4colum text.
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ending",
                        style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Size.width * .50,
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: endingController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  //5colum text..

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: Size.width * .50,
                        //wrap kiya Textfeild container mai...
                        child: TextField(
                          controller: detailsController,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  // sie nahi ...fazool ...
                  // Container(
                  //   width: 90,
                  //   height: 50,
                  //   color: Color(0xff6B59D3),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         "Next",
                  //         style: TextStyle(color: Colors.white, fontSize: 15),
                  //       ),
                  //       SizedBox(
                  //         width: 5,
                  //       ),
                  //       Icon(
                  //         Icons.arrow_forward,
                  //         color: Colors.white,
                  //         size: 15,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //row last button..
                  Container(
                    // color: Colors.red,
                    width: Size.width * .50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // contai butt...1...
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 130,
                            height: 50,
                            color: Color(0xffC1C1C1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "back",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: ()async {
                            if (selectedData.isNotEmpty) {
                            //  if (levelController.text.isNotEmpty &&  insituteController.text.isNotEmpty) {
                               
                            //  } 
                             await setAddEducation();
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => Skills(),
                                  ));
                            } else {
                              snack(context, "Please! Add Education");
                            }
                          },
                          child: Container(
                            width: 130,
                            height: 50,
                            color: Color(0xff6B59D3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Data Table
                  Text(selectedData.length.toString()),
                  DataTable(
                      headingTextStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      columns: [
                        DataColumn(label: Text("Level")),
                        DataColumn(label: Text("Institute")),
                        DataColumn(label: Text("Starting")),
                        DataColumn(label: Text("Ending")),
                        DataColumn(label: Text("Remove"))
                      ],
                      rows: [
                        // for(var item in selectedData )
                        for (int i = 0; i < selectedData.length; i++)
                          DataRow(cells: [
                            DataCell(
                              Text("${selectedData[i]["level"]}"),
                            ),
                            DataCell(
                              Text("${selectedData[i]["insitute"]}"),
                            ),
                            DataCell(
                              Text("${selectedData[i]["starting"]}"),
                            ),
                            DataCell(
                              Text("${selectedData[i]["ending"]}"),
                            ),
                            DataCell(IconButton(
                                onPressed: () {
                                  selectedData.removeAt(i);
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                )))
                          ]),
                      ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
