import 'package:flutter/material.dart';
import 'package:lookinyou/auth_service.dart';
import 'package:lookinyou/homePage.dart';
import 'package:lookinyou/lgin.dart';
import 'package:lookinyou/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'auth_service.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(children: [
          Container(
            child: Stack(children: [
              Container(
                padding: EdgeInsets.all(417.4),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Register.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 220,
                        padding:
                            EdgeInsets.only(top: 25.0, left: 45.0, right: 40.0),
                        child: ClipRRect(
                          child: Image.asset("assets/look_register.png"),
                        )),
                  ],
                ),
              ),
              Positioned(
                top: 15,
                left: -20,
                child: Container(
                    width: 260,
                    padding:
                        EdgeInsets.only(top: 55.0, left: 10.0, right: 40.0),
                    child: ClipRRect(
                      child: Image.asset("assets/vector1.png"),
                    )),
              ),
              Positioned(
                top: 110,
                left: 170,
                child: Container(
                    height: 200,
                    width: 200,
                    child: Column(
                      children: [
                        Text("Langkah hebat pertamamu dengan kami ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
              ),
              Positioned(
                  child: Container(
                margin: EdgeInsets.only(top: 225),
                child: Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            (Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          labelText: "Username",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 10,
                                    endIndent: 20,
                                    color: Color.fromARGB(255, 0, 191, 255),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          labelText: "Email",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 10,
                                    endIndent: 20,
                                    color: Color.fromARGB(255, 0, 191, 255),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          labelText: "Nomor Telepon",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 10,
                                    endIndent: 20,
                                    color: Color.fromARGB(255, 0, 191, 255),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          labelText: "Password",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          hintStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255)),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  const Divider(
                                    height: 1,
                                    thickness: 1,
                                    indent: 10,
                                    endIndent: 20,
                                    color: Color.fromARGB(255, 0, 191, 255),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      final result = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => homePage(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 0, 191, 255),
                                        fixedSize: const Size(200, 50),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(31))),
                                    child: const Text('Daftar'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final result = await Navigator.push(
                                        context,
                                        PageTransition(
                                            child: login(),
                                            duration:
                                                Duration(milliseconds: 500),
                                            type:
                                                PageTransitionType.rightToLeft),
                                      );
                                    },
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'Sudah punya akun? yuk ',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 0, 191, 255),
                                          fontSize: 15,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Login',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Color.fromARGB(
                                                  255, 0, 191, 255),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(child: Text(""))
                                ],
                              ),
                            )),
                            Positioned(
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: ClipRRect(
                                    child: Image.asset("assets/daftarcara.png"),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
              Positioned(
                top: 745,
                left: 25,
                child: Container(
                    width: 180,
                    padding: EdgeInsets.only(top: 0.0, left: 10.0, right: 40.0),
                    child: ClipRRect(
                      child: Image.asset("assets/google.png"),
                    )),
              ),
              Positioned(
                top: 750,
                left: 175,
                child: Container(
                    width: 80,
                    padding: EdgeInsets.only(top: 0.0, left: 10.0, right: 40.0),
                    child: ClipRRect(
                      child: Image.asset("assets/OR.png"),
                    )),
              ),
              Positioned(
                top: 745,
                left: 220,
                child: Container(
                    width: 180,
                    padding: EdgeInsets.only(top: 0.0, left: 10.0, right: 40.0),
                    child: ClipRRect(
                      child: Image.asset("assets/facebook.png"),
                    )),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
