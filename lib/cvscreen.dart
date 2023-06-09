//SAME PRACTICE ;;;;;;;;;;;;;;;;;;;
import 'dart:convert';

import 'package:cv/credentials.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cv extends StatefulWidget {
  @override
  State<Cv> createState() => _CvState();
}

class _CvState extends State<Cv> {
  getPersonalInfo() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString(PERSONAL);
    if (data != null) {
      setState(() {
        print(data);
        var personal = jsonDecode(data);
        personalData = personal;
      });
    }
  }

  getAddEducation() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString(EDUCATION);
    if (data != null) {
      setState(() {
        print(data);
        var education = jsonDecode(data);
        educationData = education;
      });
    }
  }

  getSkills() async {
    var pre = await SharedPreferences.getInstance();
    var data = pre.getString(SKILLS);
    if (data != null) {
      setState(() {
        print(data);
        var skills = jsonDecode(data);
        skillData = skills;
      });
    }
  }

  getAddExperience() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString(EXPERIENCE);
    if (data != null) {
      setState(() {
        print(data);
        var experience = jsonDecode(data);
        experienceData = experience;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getPersonalInfo();
    getAddEducation();
    getSkills();
    getAddExperience();
  }

  var personalData, educationData, skillData, experienceData;

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      // main roww........
      body: personalData == null ||
              educationData == null ||
              skillData == null ||
              experienceData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Row(
              children: [
                // 1maincontainer......

                Container(
                  color: Color(0xff233446),
                  height: Size.height,
                  width: Size.width * .35,
                  //1 main columnn......
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: CircleAvatar(
                              radius: 90,
                              backgroundImage: AssetImage("images/bike.jpg"),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          //1row......... kai under 2column liyay
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 37,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE7E7E9),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Icon(
                                      Icons.badge_rounded,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "",
                                    // "${personalInfo['']}",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "mhfyryry rfgfgf gfgasdagsdjhagdjh\nasgdjagsdasjdgasjdhakjsdhkajhdakhdakshdkahdkjah\ndkjashdkjahdkahdkajhdskashd\njkahdjkhakdhkjsasdhkahs fdfdfdfdfdffdfd\ntrtrtttttttt gdgfgfgfgfgfgf\neyrryryrrtrtr rtrtrtr rtrtrt",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 30,
                          ),
                          //2row...kai under 2 column  liyay..
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //1c..
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 37,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE7E7E9),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.apple,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //2c.....
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CONTACT ME",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        color: Color(0xffE7E7E9),
                                        child: Icon(
                                          Icons.phone,
                                          size: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "${personalData['phone']}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "+ 0306 - 600 - 6559",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        color: Color(0xffE7E7E9),
                                        child: Icon(
                                          Icons.abc,
                                          size: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "${personalData['email']}",
                                            // "info@businessname.com",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "www.businessname.com",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        color: Color(0xffE7E7E9),
                                        child: Icon(
                                          Icons.home,
                                          size: 13,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "339 Jene Lane Des Moines",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "IA 56575",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          //3row....... kai under 2colum liyay.
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //1c..
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 37,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE7E7E9),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.follow_the_signs,
                                      color: Colors.black,
                                      size: 13,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //2c.....
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "FOLLOW ME",
                                    //  "${personalData['email']}" ,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.facebook,
                                        size: 13,
                                        color: Color(0xffE7E7E9),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        // "facebook.com/usernma"
                                        "${personalData['email']}",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.drive_eta,
                                        size: 13,
                                        color: Color(0xffE7E7E9),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        // "dribble.com/usernma"
                                        "${personalData['phone']}",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.camera_enhance,
                                        size: 13,
                                        color: Color(0xffE7E7E9),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "enhance.net/usernma",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //4row... kai under 2column liyyay...
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //1c...
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 37,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE7E7E9),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.notification_add_outlined,
                                      color: Colors.black,
                                      size: 13,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              //2c....
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PRO SKILLS",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  //1r
                                  for (var data in skillData)
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 70,
                                          child: Text(
                                            " ${data['skillName']}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 170,
                                              child: Column(
                                                children: [
// You can also add a label to indicate the current progress percentage
                                                  Stack(
                                                    children: [
                                                      LinearProgressIndicator(
                                                        value: double.parse(
                                                                "${data["level"]}") /
                                                            100,
                                                        minHeight: 20,
                                                        backgroundColor: Colors
                                                            .grey.shade400,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          Colors.blueAccent,
                                                        ),
                                                      ),
                                                      Positioned.fill(
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            "${data["level"]}%",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  //2r.
                                  //3
                                  //4r
                                  //5
                                  //  Row(
                                  //   children: [
                                  //     Text(".  JUMLA"),
                                  //     Container(
                                  //       width: 250,
                                  //       child: LinearProgressIndicator(
                                  //         backgroundColor: Colors.pink,
                                  //         color: Colors.greenAccent,
                                  //         value: .3,
                                  //         minHeight:10 ,
                                  //       ),
                                  //     ),
                                  //   ],
                                  //  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ), //1main columnn endd..........
                  ),
                ),

                //2 mai column..........
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Size.width * .60,
                          height: Size.height * 0.23,
                          color: Color(0xff233446),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${personalData['fName']}",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${experienceData[0]["jobRole"]}".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 37,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.open_with_sharp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              // "job experiences".toUpperCase(),
                              "Experience",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        for (var data in experienceData)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //1c
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [],
                                    ), //1c
                                    SizedBox(
                                      width: 30,
                                    ),
                                    //2c
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //1r

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${data['jobRole']}",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Jan 2000 - Feb 2003",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Text(
                                            "gfgfgfg etrtrtrrtrtr rtrrreereret ttrtrtrtrtrt gertrtrtrtrtrtrttr gfgfgrt rtrtrtrtr rtrtrt \nfeere erererere erererererr ererererer rtrtrtirtrttr rtrtffdf drdrer ererer\ngrtrtrtrt rtrtrtr fsdwewerre ")
                                      ],
                                    ),
                                    // SizedBox(
                                    //   width: 33,
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        SizedBox(
                          height: 30,
                        ),

                        //
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 37,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.open_with_sharp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "education".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 30,
                        ),
                        //2row..kai under 2 columnn...
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //1c
                              SizedBox(
                                width: 30,
                              ),
                              //2c
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (var data in educationData)
                                    //1r
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.blue,
                                          ),
                                        ),
                                        Text(
                                          "${data['insitute']}",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${data["starting"]} - ${data["ending"]}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  // Text(
                                  //     "gfgfgfg etrtrtrrtrtr rtrrreereret ttrtrtrtrtrt gertrtrtrtrtrtrttr gfgfgrt rtrtrtrtr rtrtrt \nfeere erererere erererererr ererererer rtrtrtirtrttr rtrtffdf drdrer ererer\ngrtrtrtrt rtrtrtr fsdwewerre ")
                                ],
                              ),
                              // SizedBox(
                              //   width: 33,
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 37,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.open_with_sharp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Reference".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        //3row ..kai under 2column....
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //1c
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ".",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ), //1c
                              SizedBox(
                                width: 30,
                              ),
                              //2c
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //1r
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Reference",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Jan 2000 - Feb 2003",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                      "gfgfgfg etrtrtrrtrtr rtrrreereret ttrtrtrtrtrt gertrtrtrtrtrtrttr gfgfgrt rtrtrtrtr rtrtrt \nfeere erererere erererererr ererererer rtrtrtirtrttr rtrtffdf drdrer ererer\ngrtrtrtrt rtrtrtr fsdwewerre ")
                                ],
                              ),
                              // SizedBox(
                              //   width: 33,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ), //2main column.............
                ),
              ],
            ),
    );
  }
}
// Container(
//   width: 100,
//   child: LinearProgressIndicator(

//     backgroundColor: Colors.white,
//     value: 0.4,
//     minHeight: 10,
//     color:Color(0xff216885),
//   )
