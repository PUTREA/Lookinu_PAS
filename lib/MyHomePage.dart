import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lookinyou/login.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSearchClicked = false;
  final TextEditingController _filter = new TextEditingController();

  List<String> itemList = [];

  @override
  void initState() {
    for (int count = 0; count < 20; count++) {
      itemList.add("Item $count");
    }
  }

  @override
  final _starRatingSize = 10.0;

  // bawahnya appbar (lisview dll)
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
        return <Widget>[createSilverAppBar()];
      },
      body: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Center(
              child: Image.asset(
                'asset/images/banner_1.png',
                width: 330,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 8, left: 16),
            //   child: Text("Bingung mau kemana?",
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontFamily: 'Poppins',
            //           fontWeight: FontWeight.w600,
            //           color: Color.fromARGB(255, 0, 0, 0))),
            // ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 10, left: 30)),
                Image.asset(
                  'asset/images/icon/pantai-ico.png',
                  width: 60,
                ),
                Padding(padding: EdgeInsets.only(top: 10, left: 20)),
                Image.asset(
                  'asset/images/icon/bukit-ico.png',
                  width: 65,
                ),
                Padding(padding: EdgeInsets.only(top: 10, left: 20)),
                Image.asset(
                  'asset/images/icon/muse-ico.png',
                  width: 62,
                ),
                Padding(padding: EdgeInsets.only(top: 10, left: 20)),
                Image.asset(
                  'asset/images/icon/lain-ico.png',
                  width: 60,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text("Rekomendasi Tempat Wisata",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2, left: 16),
              child: Text("Bingung? tenang, kita pilihin !",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 57, 57, 57))),
            ),
            SizedBox(
              height: 6,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  // listviewnya
                  width: MediaQuery.of(context).size.width,
                  height: 175,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19.0),
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                      ),
                      // height: 140,
                      width: 157,
                      margin: EdgeInsets.all(8),
                      child: Stack(children: [
                        Container(
                          // gambar
                          height: 96,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('asset/images/borobudur.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                          ),
                        ),
                        Container(
                          // gambar
                          margin: EdgeInsets.only(top: 49),
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(19.0),
                                bottomRight: Radius.circular(19.0)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(0, 0, 0, 0),
                                Color.fromRGBO(0, 0, 0, 0.30),
                                Color.fromRGBO(0, 0, 0, 1),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                          ),
                        ),
                        Container(
                          // text
                          margin: EdgeInsets.only(top: 78, left: 7.5),
                          child: Row(
                            children: [
                              Image.asset('asset/images/icon/location-ico.png',
                                  height: 9),
                              SizedBox(
                                width: 3.1,
                              ),
                              Text('Candi Borobudur',
                                  style: TextStyle(
                                      fontSize: 10.1,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)))
                            ],
                          ),
                        ),
                        Container(
                            // tombol bookmark
                            margin: EdgeInsets.only(top: 73, left: 115),
                            // padding: EdgeInsets.only(top: 10, left: 10),
                            width: 33,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 77, left: 120),
                          child: Icon(
                            CupertinoIcons.bookmark,
                            size: 22.5,
                            color: Color.fromRGBO(13, 51, 124, 1),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 106, left: 10),
                          child: Text('Magelang, Jawa tengah',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 120, left: 7),
                              child: RatingBar.builder(
                                itemSize: 16,
                                ignoreGestures: true,
                                glow: false,
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 122, left: 3.5),
                              child: Text('4,7',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(151, 151, 151, 1))),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 141, left: 10),
                          child: Text('Lihat Review',
                              style: TextStyle(
                                  fontSize: 7.5,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                  color: Color.fromRGBO(151, 151, 151, 1))),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
            // listview
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text("Sepertinya kamu pernah kesini !",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2, left: 16),
              child: Text("Tempat wisata sebelum nonton playoff MPL!",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 57, 57, 57))),
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  // listviewnya
                  width: MediaQuery.of(context).size.width,
                  height: 175,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19.0),
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ],
                      ),
                      // height: 140,
                      width: 157,
                      margin: EdgeInsets.all(8),
                      child: Stack(children: [
                        Container(
                          // gambar
                          height: 96,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('asset/images/epos.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                          ),
                        ),
                        Container(
                          // gambar
                          margin: EdgeInsets.only(top: 49),
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(19.0),
                                bottomRight: Radius.circular(19.0)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(0, 0, 0, 0),
                                Color.fromRGBO(0, 0, 0, 0.30),
                                Color.fromRGBO(0, 0, 0, 1),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                          ),
                        ),
                        Container(
                          // text
                          margin: EdgeInsets.only(top: 73, left: 7.5),
                          child: Row(
                            children: [
                              Image.asset('asset/images/icon/location-ico.png',
                                  height: 9),
                              SizedBox(
                                width: 3.1,
                              ),
                              Text('GH #7',
                                  style: TextStyle(
                                      fontSize: 10.1,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)))
                            ],
                          ),
                        ),
                        Container(
                            // tombol bookmark
                            margin: EdgeInsets.only(top: 73, left: 115),
                            // padding: EdgeInsets.only(top: 10, left: 10),
                            width: 33,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 77, left: 120),
                          child: Icon(
                            CupertinoIcons.bookmark,
                            size: 22.5,
                            color: Color.fromRGBO(13, 51, 124, 1),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 106, left: 10),
                          child: Text('DKI Jakarta',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 120, left: 7),
                              child: RatingBar.builder(
                                itemSize: 16,
                                ignoreGestures: true,
                                glow: false,
                                initialRating: 0.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 122, left: 3.5),
                              child: Text('#7',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(151, 151, 151, 1))),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 141, left: 10),
                          child: Text('Lihat Review',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                  color: Color.fromRGBO(151, 151, 151, 1))),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ])),
    ));
  }

  SliverAppBar createSilverAppBar() {
    // appbar home (belakangnya sb)
    return SliverAppBar(
        // backgroundColor: Color.fromARGB(255, 255, 255, 255),
        // ,(lmao ini warna belakang searchbar)
        // toolbarHeight: 50,
        collapsedHeight: 70,
        expandedHeight: 257,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(bottom: 10),
            centerTitle: true,
            expandedTitleScale: 1,
            title: Stack(
              children: [
                // searchbar
                // Image.asset(
                //   "asset/images/home-coll.png",
                //   fit: BoxFit.fill,
                // ),
                GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return login();
                          },
                        )),
                    child: Container(
                      child: Stack(children: [
                        // Padding(padding: EdgeInsets.only(top: 10, left: 20)),
                        Image.asset(
                          'asset/images/sb.png',
                          width: 320,
                          // height: 30,
                        ),
                      ]),
                    )),
              ],
            ),
            background: Stack(
              children: [
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: (Image.asset(
                    "asset/images/home.png",
                    fit: BoxFit.fill,
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 14, top: 40),
                  child: Icon(
                    Icons.account_circle_rounded,
                    color: Color.fromRGBO(136, 198, 246, 1),
                    size: 34,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 290, top: 31),
                    child: (Positioned(
                      child: (RawMaterialButton(
                        // padding: EdgeInsets.only(left: 30),
                        elevation: 0.0,
                        child: Image.asset(
                          "asset/images/mail-ico.png",
                          height: 23,
                        ),
                        onPressed: () =>
                            Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return login();
                          },
                        )),
                      )),
                    )))
              ],
            )));
  }

  void _mailPressed() {
    onPressed:
    () => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return login();
          },
        ));
  }
}
