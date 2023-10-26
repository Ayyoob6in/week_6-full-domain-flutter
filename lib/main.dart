import 'package:flutter/material.dart';
import 'package:project_camapp/screens/camScreen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.greenAccent,),
      home:const CamScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}