import 'package:flutter/material.dart';
import 'package:lookinyou/detailPage.dart';
import 'package:lookinyou/register.dart';
import 'package:page_transition/page_transition.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
            Container(
              child: Stack(children: [
                Container(
                  padding: EdgeInsets.all(417.4),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/back_login.png'),
                    fit: BoxFit.cover,
                  )),
                ),
                Positioned(
                    top: 40,
                    left: -50,
                    child: Container(
                      width: 100,
                      height: 780,
                      child: Image.asset("assets/side.png"),
                    )),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 220,
                      padding: EdgeInsets.only(top: 25.0, left: 45, right: 40),
                      child: ClipRRect(
                        child: Image.asset('assets/look_login.png'),
                      ),
                    )
                  ],
                )),
                Positioned(
                    top: 15,
                    left: 160,
                    child: Container(
                      width: 260,
                      padding: EdgeInsets.only(top: 55.0, left: 10, right: 40),
                      child: ClipRRect(
                        child: Image.asset("assets/vector_login.png"),
                      ),
                    )),
                Positioned(
                  top: 610,
                  left: -20,
                  child: Container(
                      width: 260,
                      padding:
                          EdgeInsets.only(top: 55.0, left: 60.0, right: 60.0),
                      child: ClipRRect(
                        child: Image.asset("assets/google_login.png"),
                      )),
                ),
                Positioned(
                  top: 610,
                  left: 150,
                  child: Container(
                      width: 260,
                      padding:
                          EdgeInsets.only(top: 55.0, left: 60.0, right: 60.0),
                      child: ClipRRect(
                        child: Image.asset("assets/facebook_login.png"),
                      )),
                ),
                Positioned(
                  top: 15,
                  left: -20,
                  child: Container(
                      width: 260,
                      padding:
                          EdgeInsets.only(top: 55.0, left: 10.0, right: 40.0),
                      child: ClipRRect(
                        child: Image.asset("assets/side_login.png"),
                      )),
                ),
                Positioned(
                  top: 140,
                  left: 20,
                  child: Container(
                      height: 200,
                      width: 180,
                      child: Column(
                        children: [
                          Text("Udah pernah jalan sama kita? ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ),
                Positioned(
                    child: Container(
                  margin: EdgeInsets.only(top: 300),
                  child: Expanded(
                      child: Container(
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Positioned(
                            top: 10,
                            left: 30,
                            child: Container(
                              padding: EdgeInsets.only(top: 0, left: 15),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Email / Username",
                                    labelStyle: TextStyle(
                                        fontSize: 18,
                                        color:
                                            Color.fromARGB(255, 0, 191, 255)),
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 0, 191, 255)),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            indent: 15,
                            endIndent: 20,
                            color: Color.fromARGB(255, 0, 191, 255),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 0, left: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 0, 191, 255)),
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 0, 191, 255)),
                                  border: InputBorder.none),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            indent: 15,
                            endIndent: 20,
                            color: Color.fromARGB(255, 0, 191, 255),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detailPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 191, 255),
                                fixedSize: const Size(200, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(31))),
                            child: const Text('Login'),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () async {
                              final result = await Navigator.push(
                                  context,
                                  PageTransition(
                                      child: register(),
                                      duration: Duration(milliseconds: 500),
                                      type: PageTransitionType.leftToRight));
                            },
                            child: Text.rich(
                              TextSpan(
                                text: 'Belum punya akun? yuk ',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 191, 255),
                                  fontSize: 15,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Daftar',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255, 0, 191, 255),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Positioned(
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: ClipRRect(
                                  child:
                                      Image.asset("assets/caralain_login.png"),
                                )),
                          ),
                        ],
                      ),
                    )),
                  )),
                ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
