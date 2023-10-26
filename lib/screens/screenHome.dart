import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Home',style: 
        TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
      ),
      body:
      
       Padding(
         padding: const EdgeInsets.only(top: 85,right: 10),
         child: Image.network('https://cdn.pixabay.com/photo/2021/09/06/11/53/mother-and-child-6601514_1280.png',fit: BoxFit.fill,),
       ),
    );
  }
}