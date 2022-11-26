import 'package:flutter/material.dart';
import 'package:lookinyou/detailPage.dart';
import 'package:lookinyou/login.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const detailPage()),
            );
          },
        ),
        title: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Lokasi Kamu",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Semarang, Jawa Tengah",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'poppins',
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Cari lokasi",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Kategori Pencarian",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Positioned(
                          child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        width: 50,
                                        child:
                                            Image.asset("assets/museum.png")),
                                  )
                                ],
                              ))),
                      Positioned(
                          child: Container(
                        child: Text("Museum"),
                      )),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 92, 92, 92),
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    children: [
                      Positioned(
                          child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        width: 50,
                                        child:
                                            Image.asset("assets/pantai.png")),
                                  )
                                ],
                              ))),
                      Positioned(
                          child: Container(
                        child: Text("Pantai"),
                      )),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 92, 92, 92),
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    children: [
                      Positioned(
                          child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        width: 50,
                                        child: Image.asset("assets/bukit.png")),
                                  )
                                ],
                              ))),
                      Positioned(
                          child: Container(
                        child: Text("Bukit/Pegunungan"),
                      )),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 92, 92, 92),
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    children: [
                      Positioned(
                          child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        width: 50,
                                        child: Image.asset(
                                            "assets/air_terjun.png")),
                                  )
                                ],
                              ))),
                      Positioned(
                          child: Container(
                        child: Text("Air Terjun"),
                      )),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 92, 92, 92),
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
