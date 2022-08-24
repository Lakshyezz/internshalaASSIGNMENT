import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tast_intern/pages/transaction_page.dart';
import 'package:tast_intern/resources/appbar.dart';
import 'package:tast_intern/widgets/blog_box.dart';

import '../resources/colors.dart';
import '../widgets/big_offer_box.dart';
import '../widgets/stack_box.dart';

class HomePage extends StatefulWidget {
  static String namedRoute = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String emoji = '';
  String name = 'RandomUser';
  bool isCompleted = false;
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;

    if (data != null) {
      setState(() {
        isCompleted = data['isCompleted'];
      });
    }
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: CustomAppbar(
            name: name,
          )),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              height: 100,
              // color: Colors.black,
              child: Text(
                isCompleted
                    ? '   Complete your \n   KYC now Goodjob'
                    : '   Complete your \n   KYC now 😡',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF525251)),
                // textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.only(top: 24),
              height: 535,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: backColor, borderRadius: BorderRadius.circular(24)),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: const EdgeInsets.only(left: 16, top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Spends',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFDFE1F3)),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          data == null ? ' ₹ 0  ' : '₹ ${data['amount']}',
                          style: GoogleFonts.poppins(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFDFE1F3)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        data == null ? '₹ 18,000' : '${data['amount']}',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFADB4E2),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Dash(
                          length: 260,
                          dashColor: Color(0xFFADB4E2),
                          dashGap: 9,
                          dashLength: 10,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'budget',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFADB4E2),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                    ],
                  ),
                  isCompleted
                      ? Container(
                          height: 130,
                          width: 275,
                          // color: Colors.pink,
                          margin: const EdgeInsets.only(right: 110),
                          child: ClipRRect(
                            child: Stack(
                              children: [
                                Image.asset('assets/images/graph.png'),
                                Image.asset('assets/images/line.png'),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          height: 130,
                          width: 275,
                        ),
                  Text(
                    "Jan month's data ",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFADB4E2),
                    ),
                  ),
                  isCompleted ? AfterCompletetion() : CompleteNowStack(),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding:
                  const EdgeInsets.only(left: 8, top: 1, bottom: 1, right: 8),
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Row(
                children: [
                  Container(
                    height: 56,
                    width: 108,
                    padding: EdgeInsets.all(12),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 26,
                      width: 72,
                      decoration: BoxDecoration(
                          color: Color(0xFFE8EAF6),
                          borderRadius: BorderRadius.circular(23)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Color(0xFF303F9F),
                            size: 22,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Home',
                            style: GoogleFonts.poppins(
                                color: Color(0xFF303F9F), fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 75,
                    child: Icon(
                      Icons.movie_creation_outlined,
                      color: Color(0xFFB7B7B7),
                      // size: ,
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 75,
                    child: Icon(
                      Icons.pie_chart_outline,
                      color: Color(0xFFB7B7B7),
                      // size: ,
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 75,
                    child: Icon(
                      Icons.bookmark_outline_sharp,
                      color: Color(0xFFB7B7B7),
                      // size: ,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '    Categories',
              style: GoogleFonts.poppins(
                  color: Color(0xFF525251),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 98,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[350]!),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey[200]),
                          child: Icon(
                            Ionicons.pizza_sharp,
                            color: Color(0xFFEB6842),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Food',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xFF525251),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 98,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[350]!),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey[200]),
                          child: Icon(
                            Ionicons.paw_sharp,
                            color: Color(0xFFE91E63),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Food',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xFF525251),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 98,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[350]!),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey[200]),
                          child: Icon(
                            Ionicons.bag_sharp,
                            color: Color(0xFF8D62F7),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Food',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xFF525251),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 98,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[350]!),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey[200]),
                          child: Icon(
                            Ionicons.tv_sharp,
                            color: Color(0xFF77ADD9),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Food',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Color(0xFF525251),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '    Task',
              style: GoogleFonts.poppins(
                  color: Color(0xFF525251),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    onTap: () {},
                    child: StackBox(
                      BigNum: Color(0xFFF6EDD2),
                      iconBox: Color(0xFFF6EDD2),
                      iconText: '🔑',
                      bigNumText: '01',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: StackBox(
                      BigNum: Color(0xFFFBE8D8),
                      iconBox: Color(0xFFFBE8D8),
                      iconText: '🍔',
                      bigNumText: '02',
                    ),
                  ),
                  StackBox(
                    BigNum: Color(0xFFD6F4DE),
                    iconBox: Color(0xFFD6F4DE),
                    iconText: '',
                    bigNumText: '03',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '    Offers & Rewards',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525251)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 360,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    OfferFirst(),
                    SizedBox(
                      width: 10,
                    ),
                    OfferFirst(),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
              '    Blogs',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF525251)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  BlogBox(),
                  const SizedBox(
                    width: 10,
                  ),
                  BlogBox(),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.only(left: 10),
              width: 328,
              height: 220,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 5.0, color: Color(0xFFD9D9D9)),
                ),
              ),
              child: Text(
                'A budget doesn’t limit your freedom; it gives you freedom',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFC9C9C9)),
              ),
            ),
            const SizedBox(
              height: 67,
            ),
          ],
        ),
      ),
    );
  }
}

class AfterCompletetion extends StatelessWidget {
  const AfterCompletetion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 196,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
                margin: const EdgeInsets.only(
                    left: 15, right: 8, bottom: 2, top: 12),
                width: 155,
                height: 85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 8, bottom: 3),
                          height: 24,
                          width: 24,
                          child: Column(
                            children: [
                              Container(
                                height: 18,
                                width: 16,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(32),
                                    color: Color(0xFFE19500).withOpacity(0.2)),
                                child: Icon(
                                  Ionicons.key_sharp,
                                  color: Colors.orange,
                                  size: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Projected Saving",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF525251),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                      width: 144,
                    ),
                    Text(
                      "₹2,000",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2F2F30),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                margin: const EdgeInsets.only(
                    left: 15, right: 8, bottom: 2, top: 4),
                width: 155,
                height: 85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 8, bottom: 3),
                          height: 24,
                          width: 24,
                          child: Column(
                            children: [
                              Container(
                                height: 18,
                                width: 16,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(32),
                                    color: Color(0xFFEB6842).withOpacity(0.25)),
                                child: Icon(
                                  Ionicons.pizza_sharp,
                                  color: Color(0xFFEB6842),
                                  size: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Highest Spent",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF525251),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                      width: 144,
                    ),
                    Text(
                      "₹2,000",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2F2F30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 6, right: 17, bottom: 9, top: 12),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            height: 175,
            width: 144,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  'Card Balance',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF525251),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      '₹1,500',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2F2F30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 8, bottom: 3),
                      height: 24,
                      width: 45,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 3),
                            height: 18,
                            width: 45,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(32),
                                color: Color(0xFFEB6842).withOpacity(0.25)),
                            child: Text(
                              'Low bal',
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFE13B30)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 48,
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 8, bottom: 3),
                      height: 70,
                      width: 70,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 24, top: 20, bottom: 4),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(84),
                                color: Color(0xFF303F9F),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 1),
                                      blurRadius: 10,
                                      color:
                                          Color(0xFF303F9F).withOpacity(0.5)),
                                ],
                              ),
                              child: Text(
                                'Add',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CompleteNowStack extends StatelessWidget {
  const CompleteNowStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16),
          margin: const EdgeInsets.only(top: 18, right: 16),
          height: 160,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'Pending KYC',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Lorem Ipsum is simply dummy text \nof the printing and typesetting \nindustry. Lorem',
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, TransactionPage.namedRoute);
                },
                child: Container(
                  width: 146,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFE13B30).withOpacity(0.9)),
                  child: Center(
                    child: Text(
                      'Complete Now',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30, left: 190),
          width: 144,
          height: 144,
          decoration: BoxDecoration(
              color: Color(0xFFE13B30).withOpacity(0.1),
              borderRadius: BorderRadius.circular(100)),
          child: Center(
              child: Text(
            '🔑',
            style:
                GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.w500),
          )),
        ),
      ],
    );
  }
}
