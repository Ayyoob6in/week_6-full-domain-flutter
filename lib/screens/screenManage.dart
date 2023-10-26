import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:week_fulldomain/screens/screenDukan.dart';
import 'package:week_fulldomain/screens/screenOrders.dart';
import 'package:week_fulldomain/screens/screenPayments.dart';

class ScreenManage extends StatefulWidget {
  const ScreenManage({Key? key}) : super(key: key);

  @override
  State<ScreenManage> createState() => _ScreenManageState();
}

class _ScreenManageState extends State<ScreenManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Center(child: Text('Manage Store')),
      ),
      body: GridView.count(
        childAspectRatio: 1.7,
        mainAxisSpacing: 15,
        crossAxisSpacing: 20,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        children: <Widget>[
          // Marketting section
          containerForHome(
            homeIcon: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.bullhorn,
                size: 17,
                color: Color.fromARGB(211, 255, 255, 255),
              ),
            ),
            text1: 'Marketing\nDesigns',
            iconBgcolor: const Color.fromARGB(255, 241, 120, 6),
          ),
          // Payment section
          containerForHome(
            homeIcon: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ScreenPayments()));
              },
              icon: const FaIcon(
                FontAwesomeIcons.indianRupeeSign,
                size: 15,
                color: Color.fromARGB(211, 255, 255, 255),
              ),
            ),
            text1: 'Online\nPayments',
            iconBgcolor: const Color.fromARGB(255, 84, 209, 88),
          ),
          // Discount Section
          containerForHome(
            homeIcon: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.tags,
                size: 15,
                color: Color.fromARGB(210, 245, 246, 243),
              ),
            ),
            text1: 'Discount\nCoupens',
            iconBgcolor: const Color.fromARGB(255, 242, 193, 70),
          ),
          // Customer Section
          containerForHome(
            homeIcon: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ScreenDukan()));
              },
              icon: const FaIcon(
                FontAwesomeIcons.users,
                size: 15,
                color: Color.fromARGB(210, 245, 246, 243),
              ),
            ),
            text1: 'My\nCustomers',
            iconBgcolor: const Color.fromARGB(255, 12, 173, 151),
          ),
          // Qr Section
          containerForHome(
            homeIcon: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.qrcode,
                size: 15,
                color: Color.fromARGB(210, 253, 254, 252),
              ),
            ),
            text1: 'Store QR\nCode',
            iconBgcolor: const Color.fromARGB(255, 134, 135, 135),
          ),
          // Charges Section
          containerForHome(
            homeIcon: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.solidMoneyBill1,
                size: 15,
                color: Color.fromARGB(210, 253, 254, 252),
              ),
            ),
            text1: 'Extra\nCharges',
            iconBgcolor: const Color.fromARGB(255, 115, 54, 164),
          ),
          // Order Section
          Container(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: -1,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent[700],
                          borderRadius:const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ScreenOrders()));
                          },
                          icon: const Icon(
                            Icons.my_library_books,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Order\nForm', style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    height: 20,
                    width: 40,
                    child:const Center(
                      child:  Text('NEW', style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget containerForHome({
    required IconButton homeIcon,
    required String text1,
    required Color iconBgcolor,
    String? text2,
  }) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: iconBgcolor,
            ),
            child: homeIcon,
          ),
          const SizedBox(height: 8),
          Text(text1, style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
