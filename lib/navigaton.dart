import 'package:flutter/material.dart';
import 'package:week_fulldomain/screens/screenCatalogue.dart';
import 'package:week_fulldomain/screens/screenHome.dart';
import 'package:week_fulldomain/screens/screenManage.dart';
import 'package:week_fulldomain/screens/screenInformation.dart';
import 'package:week_fulldomain/screens/screenOrders.dart';

class BottNavigation extends StatefulWidget {
  const BottNavigation({super.key});

  @override
  State<BottNavigation> createState() => _BottNavigationState();
}

class _BottNavigationState extends State<BottNavigation> {
  int indexNum=0;
  List tabWidgets=[
  const ScreenHome(),
   const ScreenOrders(),
  const ScreenCatalogue(),
  const ScreenManage(),
   const ScreenInformation(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   

     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
      items:const [
            BottomNavigationBarItem(icon: Icon(Icons.house_outlined), label: 'Home',backgroundColor: Colors.blue),
              BottomNavigationBarItem(icon: Icon(Icons.price_change_outlined), label: 'Orders',backgroundColor: Colors.green),
              BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits_rounded,), label: 'Products',backgroundColor: Color.fromARGB(255, 21, 32, 242)),
              BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: 'Manage',backgroundColor: Colors.black),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Account',backgroundColor: Colors.red),
     ],
     currentIndex: indexNum,
     onTap: (int index) {
      setState(() {
        indexNum=index;
      });
     },
     ),
     body: tabWidgets.elementAt(indexNum),
     );

    
  }
}