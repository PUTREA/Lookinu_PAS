// ignore_for_file: unused_local_variable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lookinyou/login.dart';
import 'package:lookinyou/searchPage.dart';
import 'package:readmore/readmore.dart';

class detailPage extends StatefulWidget {
  const detailPage({Key? key}) : super(key: key);

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> with TickerProviderStateMixin {
  List images = [
    "boro_1.png"
        "boro_2.png"
        "boro_3.png"
        "boro_4.png"
  ];
//... @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.toDouble();
        print(currentPage);
      });
    });
    super.initState();
  }

  final _pageController = PageController(viewportFraction: 0.877);

  double currentPage = 0;

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        //create an back button//
        leading: IconButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => login()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Stack(children: [
                  Container(
                    padding: EdgeInsets.all(417.4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/back_detail.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Positioned(
                      top: 305,
                      left: -2,
                      child: Container(
                        width: 400,
                        height: 600,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(33),
                                topRight: Radius.circular(33))),
                      )),
                  Positioned(
                      top: 285,
                      left: 290,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Color.fromARGB(0, 0, 0, 0).withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 4),
                              )
                            ]),
                      )),
                  Positioned(
                      top: 285,
                      left: 292,
                      child: Container(
                        width: 30,
                        height: 30,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.blue,
                            size: 40,
                          ),
                        ),
                      )),
                  Positioned(
                    top: 330,
                    left: 15,
                    child: RatingBar.builder(
                      itemSize: 20,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Positioned(
                      top: 360,
                      left: 18,
                      child: Container(
                        child: Text(
                          "Candi Borobudor",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      )),
                  Positioned(
                      top: 400,
                      left: 20,
                      child: Container(
                        width: 18,
                        padding: EdgeInsets.only(top: 0.0, left: 0, right: 0),
                        child: ClipRRect(
                          child: Image.asset('assets/map.png'),
                        ),
                      )),
                  Positioned(
                      top: 400,
                      left: 45,
                      child: Container(
                        child: Text(
                          "Kabupaten Magelang, Jawa Tengah",
                          style: TextStyle(
                              fontSize: 15, color: Color.fromARGB(83, 0, 0, 0)),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(top: 430.0, left: 10, right: 20),
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                            padding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 10,
                            ),
                            isScrollable: true,
                            labelPadding:
                                const EdgeInsets.only(left: 22, right: 22),
                            controller: _tabController,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicator: CircleTabIndicator(
                                color: Colors.black, radius: 4),
                            tabs: [
                              Tab(
                                text: "Overwiew",
                              ),
                              Tab(
                                text: "Photos",
                              ),
                              Tab(
                                text: "Map",
                              ),
                              Tab(
                                text: "Reviews",
                              )
                            ]),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: double.maxFinite,
                                height: 280,
                                child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 390,
                                              padding: EdgeInsets.only(
                                                  top: 10.0,
                                                  left: 20,
                                                  right: 20),
                                              child: ClipRRect(
                                                child: Image.asset(
                                                    'assets/overwiew_detail.png'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Center(
                                                child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Text(
                                                "Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      ),

                                      ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Positioned(
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 10.0,
                                                      left: 10,
                                                      right: 10),
                                                  child: ClipRRect(
                                                    child: Image.asset(
                                                        'assets/boro_1.png'),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 10.0,
                                                      left: 10,
                                                      right: 10),
                                                  height: 300,
                                                  width: 200,
                                                  child: ClipRRect(
                                                    child: Image.asset(
                                                        'assets/boro_2.png'),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 10.0,
                                                      left: 10,
                                                      right: 10),
                                                  child: ClipRRect(
                                                    child: Image.asset(
                                                        'assets/boro_3.png'),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                child: Container(
                                                  height: 300,
                                                  width: 200,
                                                  padding: EdgeInsets.only(
                                                      top: 10.0,
                                                      left: 10,
                                                      right: 10),
                                                  child: ClipRRect(
                                                    child: Image.asset(
                                                        'assets/boro_4.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),

                                      Container(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: 390,
                                              padding: EdgeInsets.only(
                                                  top: 10.0,
                                                  left: 20,
                                                  right: 20),
                                              child: ClipRRect(
                                                child: Image.asset(
                                                    'assets/mapBoro.png'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: ListView(
                                          padding: EdgeInsets.only(
                                              top: 10.0, left: 20, right: 20),
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Column(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    child: Stack(children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10.0,
                                                                left: 20,
                                                                right: 20),
                                                        margin:
                                                            EdgeInsets.all(1),
                                                        height: 250,
                                                        width: 350,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0)
                                                                  .withOpacity(
                                                                      0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                              offset: Offset(0,
                                                                  3), // changes position of shadow
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Positioned(
                                                          top: 15,
                                                          left: 15,
                                                          child: Container(
                                                            width: 55,
                                                            height: 55,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  'assets/avatar1.png'),
                                                            ),
                                                          )),
                                                      Positioned(
                                                        top: 25,
                                                        left: 80,
                                                        child: Container(
                                                            child: Text(
                                                                "Putra Pratama Miharjo",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        14))),
                                                      ),
                                                      Positioned(
                                                        top: 45,
                                                        left: 80,
                                                        child: Container(
                                                            child: Text(
                                                                "12 Ulasan Kafe",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        14))),
                                                      ),
                                                      Positioned(
                                                          top: 80,
                                                          left: 20,
                                                          child: Container(
                                                            width: 60,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  'assets/starulasan.png'),
                                                            ),
                                                          )),
                                                      Positioned(
                                                        top: 80,
                                                        left: 85,
                                                        child: Container(
                                                            child: Text(
                                                                "1 Bulan yang lalu",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        10))),
                                                      ),
                                                      Positioned(
                                                        top: 95,
                                                        left: 22,
                                                        child: Container(
                                                            child: Text(
                                                                "Makan di tempat",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        10))),
                                                      ),
                                                      Positioned(
                                                        top: 115,
                                                        left: 22,
                                                        child: Container(
                                                          width: 320,
                                                          child: ReadMoreText(
                                                            'Tempatnya Unik, luas, dan nyaman pastinyaa. Fasilitas lengkap add kamar mandi, toilet dan disini juga terdapat, berbagai wahana yang sangat bagus ',
                                                            trimLines: 2,
                                                            textAlign: TextAlign
                                                                .justify,
                                                            trimMode:
                                                                TrimMode.Line,
                                                            colorClickableText:
                                                                Colors.blue,
                                                            trimCollapsedText:
                                                                'Lainya',
                                                            trimExpandedText:
                                                                'Show less',
                                                            moreStyle: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        19,
                                                                        124,
                                                                        124,
                                                                        124),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 180,
                                                        left: 22,
                                                        child: Container(
                                                            width: 320,
                                                            child: Image.asset(
                                                                'assets/FOOD.png')),
                                                      ),
                                                    ]),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  child: Stack(children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 20,
                                                          right: 20),
                                                      margin: EdgeInsets.all(1),
                                                      height: 250,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 15,
                                                        left: 15,
                                                        child: Container(
                                                          width: 55,
                                                          height: 55,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/avatar1.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 25,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "Putra Pratama Miharjo",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                      top: 45,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "12 Ulasan Kafe",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                        top: 80,
                                                        left: 20,
                                                        child: Container(
                                                          width: 60,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/starulasan.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 80,
                                                      left: 85,
                                                      child: Container(
                                                          child: Text(
                                                              "1 Bulan yang lalu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 95,
                                                      left: 22,
                                                      child: Container(
                                                          child: Text(
                                                              "Makan di tempat",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 115,
                                                      left: 22,
                                                      child: Container(
                                                        width: 320,
                                                        child: ReadMoreText(
                                                          'Tempatnya Unik, luas, dan nyaman pastinyaa. Fasilitas lengkap add kamar mandi, toilet dan disini juga terdapat, berbagai wahana yang sangat bagus ',
                                                          trimLines: 2,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          trimMode:
                                                              TrimMode.Line,
                                                          colorClickableText:
                                                              Colors.blue,
                                                          trimCollapsedText:
                                                              'Lainya',
                                                          trimExpandedText:
                                                              'Show less',
                                                          moreStyle: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      19,
                                                                      124,
                                                                      124,
                                                                      124),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 180,
                                                      left: 22,
                                                      child: Container(
                                                          width: 320,
                                                          child: Image.asset(
                                                              'assets/FOOD.png')),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  child: Stack(children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 20,
                                                          right: 20),
                                                      margin: EdgeInsets.all(1),
                                                      height: 250,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 15,
                                                        left: 15,
                                                        child: Container(
                                                          width: 55,
                                                          height: 55,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/avatar1.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 25,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "Putra Pratama Miharjo",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                      top: 45,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "12 Ulasan Kafe",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                        top: 80,
                                                        left: 20,
                                                        child: Container(
                                                          width: 60,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/starulasan.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 80,
                                                      left: 85,
                                                      child: Container(
                                                          child: Text(
                                                              "1 Bulan yang lalu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 95,
                                                      left: 22,
                                                      child: Container(
                                                          child: Text(
                                                              "Makan di tempat",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 115,
                                                      left: 22,
                                                      child: Container(
                                                        width: 320,
                                                        child: ReadMoreText(
                                                          'Tempatnya Unik, luas, dan nyaman pastinyaa. Fasilitas lengkap add kamar mandi, toilet dan disini juga terdapat, berbagai wahana yang sangat bagus ',
                                                          trimLines: 2,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          trimMode:
                                                              TrimMode.Line,
                                                          colorClickableText:
                                                              Colors.blue,
                                                          trimCollapsedText:
                                                              'Lainya',
                                                          trimExpandedText:
                                                              'Show less',
                                                          moreStyle: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      19,
                                                                      124,
                                                                      124,
                                                                      124),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 180,
                                                      left: 22,
                                                      child: Container(
                                                          width: 320,
                                                          child: Image.asset(
                                                              'assets/FOOD.png')),
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  child: Stack(children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 20,
                                                          right: 20),
                                                      margin: EdgeInsets.all(1),
                                                      height: 250,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 15,
                                                        left: 15,
                                                        child: Container(
                                                          width: 55,
                                                          height: 55,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/avatar1.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 25,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "Putra Pratama Miharjo",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                      top: 45,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "12 Ulasan Kafe",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                        top: 80,
                                                        left: 20,
                                                        child: Container(
                                                          width: 60,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/starulasan.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 80,
                                                      left: 85,
                                                      child: Container(
                                                          child: Text(
                                                              "1 Bulan yang lalu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 95,
                                                      left: 22,
                                                      child: Container(
                                                          child: Text(
                                                              "Makan di tempat",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 115,
                                                      left: 22,
                                                      child: Container(
                                                        width: 320,
                                                        child: ReadMoreText(
                                                          'Tempatnya Unik, luas, dan nyaman pastinyaa. Fasilitas lengkap add kamar mandi, toilet dan disini juga terdapat, berbagai wahana yang sangat bagus ',
                                                          trimLines: 2,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          trimMode:
                                                              TrimMode.Line,
                                                          colorClickableText:
                                                              Colors.blue,
                                                          trimCollapsedText:
                                                              'Lainya',
                                                          trimExpandedText:
                                                              'Show less',
                                                          moreStyle: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      19,
                                                                      124,
                                                                      124,
                                                                      124),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 180,
                                                      left: 22,
                                                      child: Container(
                                                          width: 320,
                                                          child: Image.asset(
                                                              'assets/FOOD.png')),
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  child: Stack(children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 20,
                                                          right: 20),
                                                      margin: EdgeInsets.all(1),
                                                      height: 250,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 15,
                                                        left: 15,
                                                        child: Container(
                                                          width: 55,
                                                          height: 55,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/avatar1.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 25,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "Putra Pratama Miharjo",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                      top: 45,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "12 Ulasan Kafe",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                        top: 80,
                                                        left: 20,
                                                        child: Container(
                                                          width: 60,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/starulasan.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 80,
                                                      left: 85,
                                                      child: Container(
                                                          child: Text(
                                                              "1 Bulan yang lalu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 95,
                                                      left: 22,
                                                      child: Container(
                                                          child: Text(
                                                              "Makan di tempat",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 115,
                                                      left: 22,
                                                      child: Container(
                                                        width: 320,
                                                        child: ReadMoreText(
                                                          'Tempatnya Unik, luas, dan nyaman pastinyaa. Fasilitas lengkap add kamar mandi, toilet dan disini juga terdapat, berbagai wahana yang sangat bagus ',
                                                          trimLines: 2,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          trimMode:
                                                              TrimMode.Line,
                                                          colorClickableText:
                                                              Colors.blue,
                                                          trimCollapsedText:
                                                              'Lainya',
                                                          trimExpandedText:
                                                              'Show less',
                                                          moreStyle: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      19,
                                                                      124,
                                                                      124,
                                                                      124),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 180,
                                                      left: 22,
                                                      child: Container(
                                                          width: 320,
                                                          child: Image.asset(
                                                              'assets/FOOD.png')),
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  child: Stack(children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 20,
                                                          right: 20),
                                                      margin: EdgeInsets.all(1),
                                                      height: 250,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 15,
                                                        left: 15,
                                                        child: Container(
                                                          width: 55,
                                                          height: 55,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/avatar1.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 25,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "Putra Pratama Miharjo",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                      top: 45,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "12 Ulasan Kafe",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                        top: 80,
                                                        left: 20,
                                                        child: Container(
                                                          width: 60,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/starulasan.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 80,
                                                      left: 85,
                                                      child: Container(
                                                          child: Text(
                                                              "1 Bulan yang lalu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 95,
                                                      left: 22,
                                                      child: Container(
                                                          child: Text(
                                                              "Makan di tempat",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 115,
                                                      left: 22,
                                                      child: Container(
                                                        width: 320,
                                                        child: ReadMoreText(
                                                          'Tempatnya Unik, luas, dan nyaman pastinyaa. Fasilitas lengkap add kamar mandi, toilet dan disini juga terdapat, berbagai wahana yang sangat bagus ',
                                                          trimLines: 2,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          trimMode:
                                                              TrimMode.Line,
                                                          colorClickableText:
                                                              Colors.blue,
                                                          trimCollapsedText:
                                                              'Lainya',
                                                          trimExpandedText:
                                                              'Show less',
                                                          moreStyle: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      19,
                                                                      124,
                                                                      124,
                                                                      124),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 180,
                                                      left: 22,
                                                      child: Container(
                                                          width: 320,
                                                          child: Image.asset(
                                                              'assets/FOOD.png')),
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  child: Stack(children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10.0,
                                                          left: 20,
                                                          right: 20),
                                                      margin: EdgeInsets.all(1),
                                                      height: 250,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                        top: 15,
                                                        left: 15,
                                                        child: Container(
                                                          width: 55,
                                                          height: 55,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/avatar1.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 25,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "Putra Pratama Miharjo",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                      top: 45,
                                                      left: 80,
                                                      child: Container(
                                                          child: Text(
                                                              "12 Ulasan Kafe",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      14))),
                                                    ),
                                                    Positioned(
                                                        top: 80,
                                                        left: 20,
                                                        child: Container(
                                                          width: 60,
                                                          child: ClipRRect(
                                                            child: Image.asset(
                                                                'assets/starulasan.png'),
                                                          ),
                                                        )),
                                                    Positioned(
                                                      top: 80,
                                                      left: 85,
                                                      child: Container(
                                                          child: Text(
                                                              "1 Bulan yang lalu",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 95,
                                                      left: 22,
                                                      child: Container(
                                                          child: Text(
                                                              "Makan di tempat",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      10))),
                                                    ),
                                                    Positioned(
                                                      top: 115,
                                                      left: 22,
                                                      child: Container(
                                                        width: 320,
                                                        child: ReadMoreText(
                                                          'Tempatnya Unik, luas, dan nyaman pastinyaa. Fasilitas lengkap add kamar mandi, toilet dan disini juga terdapat, berbagai wahana yang sangat bagus ',
                                                          trimLines: 2,
                                                          textAlign:
                                                              TextAlign.justify,
                                                          trimMode:
                                                              TrimMode.Line,
                                                          colorClickableText:
                                                              Colors.blue,
                                                          trimCollapsedText:
                                                              'Lainya',
                                                          trimExpandedText:
                                                              'Show less',
                                                          moreStyle: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      19,
                                                                      124,
                                                                      124,
                                                                      124),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 180,
                                                      left: 21,
                                                      child: Container(
                                                          width: 320,
                                                          child: Image.asset(
                                                              'assets/FOOD.png')),
                                                    ),
                                                  ]),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      //make the text black
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Positioned(
                          child: Container(
                        child: ElevatedButton(
                          onPressed: () async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => searchPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 0, 191, 255),
                              fixedSize: const Size(200, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(31))),
                          child: const Text('Check Google Page'),
                        ),
                      ))
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = Paint()..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
