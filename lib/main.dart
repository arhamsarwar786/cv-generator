import 'package:flutter/material.dart';
import 'package:cv/add_experience.dart';
import 'package:cv/share.dart';
// import 'package:cv/skills.dart';

import 'add_education.dart';
import 'cvscreen.dart';
import 'personal_info.dart';
import 'skills.dart';


void main() {
  runApp(My());
}
class My extends StatelessWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        fontFamily: "fira"
      ),
      debugShowCheckedModeBanner: false,
      home: Cv(),
      // home:PersonalInfo(),
      // home:AddEducation() ,
      // home: Skills(),
      // home: PersonalInfo(),
      // home: AddExperience(),
   
    );
  }
}