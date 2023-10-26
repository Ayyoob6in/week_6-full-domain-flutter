import 'package:flutter/material.dart';
class ScreenCatalogue extends StatefulWidget {
  const ScreenCatalogue({super.key, Key? okay});

  @override
  State<ScreenCatalogue> createState() => _ScreenCatalogueState();
}

class _ScreenCatalogueState extends State<ScreenCatalogue> {
  bool checking = false;
  final Divider divider = const Divider(
    thickness: 1,
    endIndent: 22,
    indent: 22,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Products'),
              Tab(text: 'Categories'),
            ],
          ),
          title: const Center(child: Text('Catalogue')),
          actions: const [
            Icon(Icons.search,size: 30,),
          ],
        ),
        body: TabBarView(
          children: [
            //--------------> Products
            ListView(
              children: [
                itemList(
                  detailsText: 'Casual Regular | Sleeves....',
                  priceText: '₹400',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/ke1pnrk0/top/f/d/f/s-tttp003830-tokyo-talkies-original-imafutjs8cxxzg2z.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                itemList(
                  detailsText: 'Casual pup Sleeves Solid...',
                  priceText: '₹399',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/xif0q/top/i/a/5/xl-takitp020peach-taki-taki-original-imagsw32c6kvdfz2.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                itemList(
                  detailsText: 'Casual Regular Checkered ',
                  priceText: '₹249',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/kidgnm80-0/top/t/v/s/l-tttp004020-tokyo-talkies-original-imafy6btaybbnzr6.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                itemList(
                  detailsText: 'Men Printed Round Neck...',
                  priceText: '₹1277',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/xif0q/sweater/m/o/s/-original-imagsy6s4vkyayya.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                 itemList(
                  detailsText: 'Men Full Sleeve Printed...   ',
                  priceText: '₹777',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/xif0q/sweatshirt/q/l/r/m-223061160-1-monte-carlo-original-imagtbnnkuxzz7bh.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                 itemList(
                  detailsText: 'Casual pup Sleeves Solid...',
                  priceText: '₹399',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/xif0q/top/i/a/5/xl-takitp020peach-taki-taki-original-imagsw32c6kvdfz2.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                itemList(
                  detailsText: 'Casual Regular Checkered ',
                  priceText: '₹249',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/kidgnm80-0/top/t/v/s/l-tttp004020-tokyo-talkies-original-imafy6btaybbnzr6.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                itemList(
                  detailsText: 'Men Printed Round Neck...',
                  priceText: '₹1277',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/xif0q/sweater/m/o/s/-original-imagsy6s4vkyayya.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                 itemList(
                  detailsText: 'Men Full Sleeve Printed...   ',
                  priceText: '₹777',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/xif0q/sweatshirt/q/l/r/m-223061160-1-monte-carlo-original-imagtbnnkuxzz7bh.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
                 itemList(
                  detailsText: 'Casual pup Sleeves Solid...',
                  priceText: '₹399',
                  img: Image.network(
                    'https://rukminim2.flixcart.com/image/832/832/xif0q/top/i/a/5/xl-takitp020peach-taki-taki-original-imagsw32c6kvdfz2.jpeg?q=70',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            //-------------->categories
             ListView(
              children: [
                payout(
                img: Image.network('https://rukminim2.flixcart.com/image/832/832/xif0q/sweater/h/r/v/-original-imagufyqw4yvdned.jpeg?q=70'),
                ptext1: 'Order #1688068',
                ptext2: 'july 12, 2:06 PM',
                ptext3: '₹799'
              ),
              payoutBottomText(btext: '₹799 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/612/612/xif0q/sweatshirt/a/g/b/-original-imagufytxxkufp9g.jpeg?q=70'),
                ptext1: 'Order #1688061',
                ptext2: 'july 13, 1:01 PM',
                ptext3: '₹499'
              ),
              payoutBottomText(btext: '₹499 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/1080/1080/xif0q/sweater/c/y/o/xxl-18363704-here-now-original-imagk3ggng84n8zh.jpeg?q=70'),
                ptext1: 'Order #1688062',
                ptext2: 'july 1, 2:01 PM',
                ptext3: '₹599'
              ),
              payoutBottomText(btext: '₹599 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/600/600/xif0q/sweatshirt/g/g/j/xxl-sxv-california-west-coast-cream-white-hoodie-sxv-style-original-imaghyd3hg9m3abd.jpeg?q=70'),
                ptext1: 'Order #1688063',
                ptext2: 'july 9, 9:01 AM',
                ptext3: '₹999'
              ),
              payoutBottomText(btext: '₹999 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/832/832/xif0q/sweatshirt/k/d/a/-original-imagufytf7dwfhqk.jpeg?q=70'),
                ptext1: 'Order #1688054',
                ptext2: 'july 7, 5:01 PM',
                ptext3: '₹789'
              ),
              payoutBottomText(btext: '₹789 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/832/832/kvba7bk0/sweater/0/a/s/m-rfw0345-red-tape-original-imag88mxzqaghsdg.jpeg?q=70'),
                ptext1: 'Order #1688060',
                ptext2: 'july 4, 2:01 PM',
                ptext3: '₹589'
              ),
              payoutBottomText(btext: '₹589 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/832/832/xif0q/sweater/7/f/3/m-rmwy01247-w0-raymond-original-imagtadykmjehrq8.jpeg?q=70'),
                ptext1: 'Order #1688040',
                ptext2: 'july 1, 3:01 PM',
                ptext3: '₹559'
              ),
              payoutBottomText(btext: '₹559 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/832/832/xif0q/sweater/h/r/v/-original-imagufyqw4yvdned.jpeg?q=70'),
                ptext1: 'Order #1688068',
                ptext2: 'july 12, 2:06 PM',
                ptext3: '₹799'
              ),
              payoutBottomText(btext: '₹799 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/612/612/xif0q/sweatshirt/a/g/b/-original-imagufytxxkufp9g.jpeg?q=70'),
                ptext1: 'Order #1688061',
                ptext2: 'july 13, 1:01 PM',
                ptext3: '₹499'
              ),
              payoutBottomText(btext: '₹499 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
              payout(
                img: Image.network('https://rukminim2.flixcart.com/image/600/600/xif0q/sweatshirt/g/g/j/xxl-sxv-california-west-coast-cream-white-hoodie-sxv-style-original-imaghyd3hg9m3abd.jpeg?q=70'),
                ptext1: 'Order #1688063',
                ptext2: 'july 9, 9:01 AM',
                ptext3: '₹999'
              ),
              payoutBottomText(btext: '₹999 deposited to 58860200000138'),
              divider,
              //---------------------------------------------------------------------
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  Widget itemList({
    required String detailsText,
    required String priceText,
    required Image img,
  }) {
    return Column(
      children: [
        Container(
          height: 167,
          margin: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 5),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: img,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 29,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  detailsText,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 50, 49, 49),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text('1 piece'),
                        const SizedBox(height: 7),
                        Text(
                          priceText,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                ' in stock',
                                style: TextStyle(color: Colors.green),
                              ),
                              const SizedBox(width: 135),
                              Switch(
                                value: checking,
                                activeColor: Colors.blue,
                                onChanged: (value) {
                                  setState(() {
                                    checking = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
             const SizedBox(height: 3,),
              const Divider(thickness: 1, endIndent: 10, indent: 10),
              SizedBox(
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share_rounded)),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Share Product',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget payout({required Image img, required String ptext1, required String ptext2, required String ptext3}) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 22, right: 22),
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(3)),
        child: img,
      ),
      title: Text(ptext1),
      subtitle: Text(ptext2),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(ptext3, style: const TextStyle(color: Colors.blue)),
          ),
          const SizedBox(
            height: 20,
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.circle, size: 15, color: Colors.green),
                Text('successful')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget payoutBottomText({required String btext}) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Text(btext, style: const TextStyle(color: Colors.grey, fontSize: 13)),
    );
  }
}
