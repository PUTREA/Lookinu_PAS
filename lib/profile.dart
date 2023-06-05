import 'package:flutter/material.dart';
import 'package:lookinyou/detailPage.dart';
import 'package:readmore/readmore.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
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
              MaterialPageRoute(builder: (context) => detailPage()),
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
                    padding: EdgeInsets.all(140.4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/back_profil.png'))),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 90),
                      child: Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/prof_icon.png'))),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Rangga Alrasya',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              'Semarang, Pedurungan',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.only(top: 250),
                      child: Stack(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(1),
                          height: 80,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 56, 56, 56)
                                    .withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Tentang Saya',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14,
                            ),
                          ),
                        )),
                        Positioned(
                            top: 30,
                            left: 10,
                            child: Container(
                              width: 300,
                              child: ReadMoreText(
                                'aku selalu suka liat pemandangan indonesia yang gaada abisnya , bisa healing santai sambil foto - foto  dan upload di sosial media kuu! ',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 72, 72, 72),
                                  fontSize: 10,
                                ),
                                trimLines: 2,
                                textAlign: TextAlign.justify,
                                trimMode: TrimMode.Line,
                                colorClickableText: Colors.blue,
                                trimCollapsedText: 'Lainya',
                                trimExpandedText: 'Show less',
                                moreStyle: TextStyle(
                                    color: Color.fromARGB(19, 0, 0, 0),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ]),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Tempat Favorit mu',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    // listviewnya
                    width: MediaQuery.of(context).size.width,
                    height: 175,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: 15, bottom: 15),
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
                        width: 160,

                        child: Stack(children: [
                          Container(
                            // gambar
                            height: 95,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/boro_6.png'),
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
                                Image.asset('assets/map.png', height: 10),
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
                              Icons.bookmark_border,
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
                                        color:
                                            Color.fromRGBO(151, 151, 151, 1))),
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
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Container(
                      child: Stack(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(top: 10.0, left: 30, right: 30),
                        margin: EdgeInsets.all(15),
                        height: 350,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 105, 105, 105)
                                  .withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 30,
                        child: Container(
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Infromasi Akun",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 0, 0, 0)))),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 30,
                        child: Container(
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text("Ubah",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey))),
                        ),
                      ),
                      Positioned(
                          top: 60,
                          left: 30,
                          child: Container(
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Nama Lengkap",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 120,
                              )),
                              TextSpan(
                                  text: "Rangga Alrasya",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)))
                            ])),
                          )),
                      Positioned(
                          top: 110,
                          left: 30,
                          child: Container(
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Usia",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 220,
                              )),
                              TextSpan(
                                  text: "18 Tahun",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)))
                            ])),
                          )),
                      Positioned(
                          top: 160,
                          left: 30,
                          child: Container(
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Alamat",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 125,
                              )),
                              TextSpan(
                                  text: "Semarang, Pedurungan",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)))
                            ])),
                          )),
                      Positioned(
                          top: 210,
                          left: 30,
                          child: Container(
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Nomor Telepon",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 110,
                              )),
                              TextSpan(
                                  text: "+6200986676567",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)))
                            ])),
                          )),
                      Positioned(
                          top: 250,
                          left: 30,
                          child: Container(
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Email",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 105,
                              )),
                              TextSpan(
                                  text: "Putramiharjo236@gmail.com",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 0, 0, 0)))
                            ])),
                          )),
                      Positioned(
                        top: 290,
                        left: 35,
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                width: 300,
                                height: 50,
                                child: Row(
                                  children: [
                                    Image.asset("assets/ulasan_foto.png")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
