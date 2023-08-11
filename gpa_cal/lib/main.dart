import 'package:flutter/material.dart';
import 'package:gpa_cal/Home_page.dart';

void main(){
  runApp(gpa_cal());
}

class gpa_cal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "GPA Calculater",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}
