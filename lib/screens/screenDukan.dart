
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenDukan extends StatefulWidget {
  final String videoId = 'TRl1QJ-8nxQ';
  const ScreenDukan({Key? key}) : super(key: key);

  @override
  State<ScreenDukan> createState() => _ScreenDukanState();
}

class _ScreenDukanState extends State<ScreenDukan> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SizedBox space = const SizedBox(height: 3,);
  late YoutubePlayerController _controller;
    List<bool> _isVisible = [false, false, false, false, false];

  List<String> images = [
    'https://img.icons8.com/?size=512&id=nk7tDNzEkDgu&format=png',
    'https://img.icons8.com/?size=512&id=EPLP1GcwAlNr&format=png',
    'https://img.icons8.com/?size=512&id=50085&format=png',
    'https://img.icons8.com/?size=512&id=P6lbifB7XrJH&format=png'
  ];
  List<String> titles = [
    'Custom domain name',
    'Verified seller badge',
    'Dukaan for pc',
    'Priority support'
  ];
  List<String> subtitle = [
    'Get your own custom domain and build\nyour brand on the internet.',
    'Get green verified badge under your\nstore name and built trust.',
    'Access all the exclusive premium\nfeatures on Dukaan for pc.',
    'Get your questions resolved with our \nprivacy customer support.',
  ];


  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    )..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (_controller.value.playerState == PlayerState.paused) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text('Dukan Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.blue[700],
                    width: MediaQuery.of(context).size.width,
                    height: 75,
                  ),
                  Positioned(
                    top: 2,
                    left: 20,
                    right: 30,
                    child: Container(
                      height: 175,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            height: 50,
                            child: Image.network(
                                'https://mydukaan.io/blog/wp-content/uploads/dukaan_blog_logo.png'),
                          ),
                          const SizedBox(height: 10,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text('Get Dukaan premium for Just',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),
                                  ),
                                  SizedBox(height: 3),
                                  Text('4,999/year',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),
                                  ),
                                  SizedBox(height: 7),
                                  Text('All the Advanced features for scaling your',
                                    style: TextStyle(color: Colors.grey, fontSize: 13),
                                  ),
                                  Text('business',
                                    style: TextStyle(color: Colors.grey, fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22, bottom: 5),
              child: Text('Features',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Column(
              children: List.generate(4, (index) {
                return ListTile(
                  leading: CircleAvatar(child: Image.network(images[index])),
                  title: Text(titles[index],
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(subtitle[index]),
                );
              }),
            ),
            const SizedBox(height: 15,),
            const Divider(thickness: 3,),
            const Padding(
              padding: EdgeInsets.only(left: 22, top: 14),
              child: Text('What is Dukaan Premium?',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
            ),
            Container(
              height: 195,
              width: 345,
              margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: YoutubePlayer(controller: _controller),
              ),
            ),
            const Divider(thickness: 3,),
            const Padding(
              padding: EdgeInsets.only(left: 22, top: 10,),
              child: Text('Frequently asked questions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
         
          for (int i = 0; i < titles.length; i++)
              Column(
                children: [
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 4, top: 4),
                      child: Text('What type of business can use ${titles[i]}?'),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible[i] = !_isVisible[i];
                        });
                      },
                      icon: Icon(
                        _isVisible[i] ? Icons.remove : Icons.add,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible[i],
                    child: const ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          'Dukaan, founded in 2020, which set out to digitize mom-and-pop storefronts and kiranas, has introduced several new features, initiatives in the past year to meet the needs of the market.',
                        ),
                      ),
                    ),
                  ),
                  const Divider(thickness: 1, indent: 20, endIndent: 20),
                ],
              ),
            const  SizedBox(height: 10,), 
            const  Divider(thickness: 3,),

            const  Padding(
                padding:  EdgeInsets.only(left: 22,top: 10),
                child: Text('Need help? Get in touch',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),),
              ),
               Padding(
                 padding: const EdgeInsets.only(left: 13 ,top: 15,right: 5,bottom: 20),
                 child: Row(
                  children: [
                    Container(
                      height: 95 ,
                      width: 175,
                      decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 200, 197, 197),width: 1),
                      borderRadius:const BorderRadius.all(Radius.circular(5))
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.chat,size: 29 ,color: Color.fromARGB(255, 131, 131, 130),),
                          Text('Live chat',style: TextStyle(fontSize: 19,color: Color.fromARGB(255, 131, 131, 130) ),)
                        ],
                      ),
                    ),
                   const SizedBox(width: 20 ,),
                    Container(
                       decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 200, 197, 197),width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      height: 95,
                      width: 175  ,
                      child: const Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone,size: 29 ,color: Color.fromARGB(255, 131, 131, 130),),
                          Text('Live chat',style: TextStyle(fontSize: 19,color: Color.fromARGB(255, 131, 131, 130)),),
                          
                        ],
                      ),
                    )
                  ],
                  ),
               ),
               Divider(thickness: 3,),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     ElevatedButton(onPressed: (){},style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 219, 37, 37)),
                      minimumSize: MaterialStateProperty.all<Size>(Size(175,50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ))
                     ),
                      
                     child: const Text('Select Domain'),
                     ),
                      ElevatedButton(onPressed: (){},style:ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(Size(175,50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      )
                     ),
                      
                     child: const Text('Get Premimum'),
                     ),

                     
               
                   ],
                 ),
               )
            
        ],
        ),
      
      ),
    );
  }
}



