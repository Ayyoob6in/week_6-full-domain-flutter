import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class ScreenInformation extends StatefulWidget {
  const ScreenInformation({Key? key}) : super(key: key);

  @override
  State<ScreenInformation> createState() => _ScreenInformationState();
}

class _ScreenInformationState extends State<ScreenInformation> {
  bool isChecked = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text('Additional Information'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              title: const Text('Share Dukan App'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios, size: 17),
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.language_sharp)),
              title: const Text('Change Language'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios, size: 17),
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.whatsapp)),
              title: const Text('Whatsapp Chat Support'),
              trailing: Switch(value: isChecked, 
              activeColor: Colors.blue,
              onChanged: (value){
                setState(() {
                  isChecked=value;
                });
              },
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.lock)),
              title: const Text('Privacy policy'),
            ),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.star_border, size: 30)),
              title: const Text('Rate us'),
            ),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
              title: const Text('Sign out'),
            ),
            const SizedBox(height: 260), 
            const Text('version', style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 4),
            const Text('2.4.2', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}
