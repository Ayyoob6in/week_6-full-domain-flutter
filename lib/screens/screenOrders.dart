import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title:const Text('Order #1688068'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children:  [
         const Padding(
           padding: EdgeInsets.only(bottom: 10 ),
           child: Row(children: [
            Text('July 12, 2:06 PM'),
            SizedBox(width: 170),
            CircleAvatar(radius: 5,backgroundColor: Colors.green,),
            SizedBox(width: 6,),
            Text('Delivered ',style: TextStyle(color: Color.fromARGB(255, 128, 127, 127),),)
           ],),
         ),
        const Divider(thickness: 1,),
         const Padding(
           padding: EdgeInsets.only(top: 12 ),
           child: Row(children: [
            Text('1 ITEM',style: TextStyle(color: Color.fromARGB(255, 131, 129, 129)),),
            SizedBox(width: 220,),
            Icon(Icons.receipt,color: Color.fromARGB(255, 47, 152, 237),),
            SizedBox(width: 5,),
            Text('RECEIPT',style: TextStyle(color: Color.fromARGB(255, 49, 157, 245)),)
           ],),
         ),
        const SizedBox(height: 10,),
        SizedBox(
          height: 120 ,
          child: Stack(
            children: [
            SizedBox(
              height: 100 ,
              width: 89 ,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network('https://rukminim2.flixcart.com/image/832/832/xif0q/sweater/h/r/v/-original-imagufyqw4yvdned.jpeg?q=70',fit: BoxFit.cover,),
              ),
            ),
             Positioned(
              left: 105 ,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text('Casual Regular | Sleeves....',style: TextStyle(fontSize: 19 ),),
                const SizedBox(height: 5 ,),
               const Text('1 Piece',),
              const  Text('Size: XL',style: TextStyle(color: Color.fromARGB(255, 108, 107, 107,),fontSize: 16 ),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 10, 140, 246)),
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child: const Center(child: Text('1',style: TextStyle(color: Colors.blue),)),),
                  const  SizedBox(width: 10,),
                  const  Text('x ₹400',style: TextStyle(fontSize: 18 ),),
                  const SizedBox(width: 110 ,),
                  const  Text('₹400',style: TextStyle(fontSize: 17 ),),
                ],
              )
              ],),
            )
            ],
          ),
        ),
        const Divider(thickness: 1,),
       const Padding(
         padding: EdgeInsets.only(top: 10 ),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Item Total',style: TextStyle(fontSize: 17 ),),
          Text('₹400',style: TextStyle(fontSize: 17 ),),
         ],),
       ),
        const Padding(
         padding: EdgeInsets.only(top: 5 ),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Delivery',style: TextStyle(fontSize: 17 ),),
          Text('FREE',style: TextStyle(fontSize: 17,color: Colors.green),),
         ],),
       ),
       const Padding(
         padding: EdgeInsets.only(top: 10,bottom: 14 ),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Grand Total',style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold,),),
          Text('₹400',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
         ],),
       ),
     const  Divider(thickness: 1 ,),
     const SizedBox(height: 10,),
       const Row(children: [
        Text('CUSTOMER DETAILS',style: TextStyle(color: Color.fromARGB(255, 136, 134, 134)),),
        SizedBox(width: 150 ,),
        Icon(Icons.share,color: Colors.blue,size: 19,),
        SizedBox(width: 5,),
        Text('SHARE',style: TextStyle(color: Colors.blue),)
       ],),
      const SizedBox(height: 15,), 
      const Text('Deepa',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),),
      const SizedBox(height: 5,), 
      const Row(children: [
        Text('+91-7829000484',style: TextStyle(color: Color.fromARGB(255, 97, 97, 97),fontSize: 17 ),),
        SizedBox(width: 165 ,),
        Icon(Icons.call_outlined,color: Colors.blue,),
        SizedBox(width: 10,),
        FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,)
      ],),
      const SizedBox(height: 15,),
      const Text('Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
     const Text('D 1101 Chartered Baverly \nHills, Subramanyapura P.o',style: TextStyle(fontSize: 17 ),),
    const SizedBox(height: 15,),
     const Row(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('City',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),),
        Text('Bangalore',style: TextStyle(fontSize: 18 ),)
      ],),
      SizedBox(width: 100,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Pincode',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17 ),),
        Text('560061 ',style: TextStyle(fontSize: 18 ),)
        ],
      )
     ],),
    const SizedBox(height: 15,),
   Column(
    crossAxisAlignment: CrossAxisAlignment.start ,
     children: [
       const Text('Payment',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
         children: [
           Text('Online'),
            Container(
       height: 20 ,
       width: 50,
       decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(5),
        color: Color.fromARGB(164, 233, 254, 227)
       ),
       child: Center(child: Text('PAID',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),)
         ],
       ),
     ],
   ),
  const SizedBox(height: 10,),
   const Divider(thickness: 1,),
   const Padding(
     padding: EdgeInsets.only(top: 10,bottom: 10 ),
     child: Text('ADDITIONAL INFORMATION',style: TextStyle(color: Color.fromARGB(255, 154, 153, 153)),),
   ),
   const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('State',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
      Text('Karnataka',style: TextStyle(fontSize: 16 ),),
      SizedBox(height: 10,),
      Text('Email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
      Text('greeniceaqua@gmail.com',style: TextStyle(fontSize: 16 ),),
   ],),
   const SizedBox(height: 10,),
   Container(
    decoration:  BoxDecoration(
      border: Border.all(color: Colors.blue),
      borderRadius: BorderRadius.circular(10)
     
    ),
     child: TextButton(onPressed: (){},
      child:const Text('Share receipt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18 ),),),
   )
        ],
      ),
    );
  }
}