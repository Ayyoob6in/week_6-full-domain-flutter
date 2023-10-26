import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ScreenPayments extends StatelessWidget {
  const ScreenPayments({super.key});

  final Divider divider = const Divider(
    thickness: 1,
    endIndent: 22,
    indent: 22,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Center(child: Text('Payments')),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.info),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color.fromARGB(255, 213, 213, 213)),
                    borderRadius: BorderRadius.circular(5),
                  ),

              //---------------------------> Transaction section

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 9, top: 9),
                        child: Text(
                          'Transaction Limit',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5, left: 9),
                        child: Text(
                          'A free limit up to which you will receive \nthe online payments directly in your bank',
                          style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 90, 87, 87)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      LinearPercentIndicator(
                        lineHeight: 7,
                        progressColor: Colors.blue,
                        percent: 0.4,
                        barRadius: const Radius.circular(5),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 9, top: 5),
                        child: Text(
                          '36,668 left out of ₹50,000',
                          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 169, 167, 167)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9, top: 18),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                            fixedSize: MaterialStateProperty.all(const Size(150, 2)),
                          ),
                          child: const Text(
                            'Increase limit',
                            style: TextStyle(color: Color.fromARGB(255, 233, 230, 230), fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),

              //---------------------------> payment method section

                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    const Text('Default Method', style: TextStyle(fontSize: 18)),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text('Online Payments', style: TextStyle(color: Colors.grey, fontSize: 15)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    const Text('Payment Profile', style: TextStyle(fontSize: 18)),
                    const SizedBox(width: 92),
                    const Text('Bank Account', style: TextStyle(color: Colors.grey, fontSize: 15)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey))
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                indent: 22,
                endIndent: 22,
              ),
              Container(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    const Text('Payment Profile', style: TextStyle(fontSize: 18)),
                    const SizedBox(width: 125),
                    const Text('Lifetime', style: TextStyle(color: Colors.grey, fontSize: 15)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 25, color: Colors.grey)),
                  ],
                ),
              ),
              //----------------------->payment profile section
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      padding: const EdgeInsets.only(left: 10, top: 17),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('AMOUNT ON HOLD', style: TextStyle(color: Colors.white)),
                          SizedBox(height: 5,),
                          Text('₹0', style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 90,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      padding: const EdgeInsets.only(left: 7, top: 17),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('AMOUNT ON RECEIVED', style: TextStyle(color: Colors.white)),
                          SizedBox(height: 5,),
                          Text('₹13,332', style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //-------------------> transaction section
              const Padding(
                padding: EdgeInsets.only(left: 22, top: 10),
                child: Text('Transactions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 22, top: 10),
                    child: Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(const StadiumBorder()),
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 223, 223, 223))),
                            child: const Text('On hold', style: TextStyle(color: Color.fromARGB(255, 111, 111, 111), fontSize: 17),
                            ),
                        ),
                        const SizedBox(width: 10,),
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(const StadiumBorder()),
                              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 3, 121, 219))),
                          child: const Text('Payouts(15)', style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(const StadiumBorder()),
                              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 223, 223, 223))),
                          child: const Text('Refunds', style: TextStyle(color: Color.fromARGB(255, 111, 111, 111), fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //--------------------------->ordered
              const SizedBox(height: 5,),

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
