import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:project_camapp/screens/show_images.dart';

class CamScreen extends StatefulWidget {
  const CamScreen({Key? key});

  @override
  State<CamScreen> createState() => _CamScreenState();
}

class _CamScreenState extends State<CamScreen> {
  String? _imagePath; // Declare _imagePath in the class scope

  Future<void> _takeImageFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
        images.add(_imagePath!);
      });
    } else {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Welcome'),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShowImages(images: images),));
            setState(() {
             _imagePath='';
            });
            
          },
           icon:const Icon(Icons.file_copy))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _imagePath !=null && _imagePath !=''?
              Image.file(
                File(_imagePath!),
                width: 200,
                height: 200,
              ):const Text('No Images Avilable here',style: TextStyle(color: Colors.blueAccent,fontSize: 25 ),),
            ElevatedButton(
              onPressed: _takeImageFromCamera,
              child: const Text("Take a Photo"),
            ),
          ],
        ),
      ),
    );
  }
  List<String> images=[
    
  ];
}
