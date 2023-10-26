// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';


class ShowImages extends StatefulWidget {
   List<String> images;
   ShowImages({super.key,required this.images});

  @override
  State<ShowImages> createState() => _ShowImagesState();
}

class _ShowImagesState extends State<ShowImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Images'),
      ),
      body: GridView.builder(
        itemCount: widget.images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (context,index){
        return Stack(
          children: [
            Container(
              height: 175 ,
              width: 175 ,
              child: Image.file(File(widget.images[index]),fit: BoxFit.cover,),
            ),
            Positioned(
              right: 10 ,
              bottom: 7,              
              child: 
            IconButton(onPressed: (){
              dilogBox(context,index);
            },
             icon: Icon(Icons.delete,color: Colors.red,))
            )
          ],
        );
        },),
    );
  }

  dilogBox(BuildContext context,int index){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title:const Text('Are you sure you want to delete?'),
        actions: [
        TextButton(onPressed: (){
          setState(() {
            widget.images.remove(widget.images[index]); 
          });
          Navigator.pop(context);
        }, child:const Text('Delete')),
        TextButton(onPressed:(){
          Navigator.pop(context);
        }, child:const Text('Close'))

        ],

      );
    });
  }
}