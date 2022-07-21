import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordContrtoller = TextEditingController();
    TextEditingController _emailContrtoller = TextEditingController();
    TextEditingController _numberContrtoller = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFFFFECB3),
      body: SingleChildScrollView(
        child: Center(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage('images/девка.png'),
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    'HELLO AGAIN!',
                    style: GoogleFonts.bebasNeue(fontSize: 36),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Welcome back,you have been missed!',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF3E0),
                        border: Border.all(color: const Color(0xFFFFF3E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: _emailContrtoller,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF3E0),
                        border: Border.all(color: Color(0xFFFFF3E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          obscureText: true,
                          controller: _passwordContrtoller,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF3E0),
                        border: Border.all(color: const Color(0xFFFFF3E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: _numberContrtoller,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Number',
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF9100),
                        border: Border.all(color: const Color(0xFFFF9100)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    onTap: () {
                      print(
                          '_emailContrtoller=============>>>>>>>>>>  $_emailContrtoller');
                      print(
                          '_passwordContrtoller=============>>>>>>>>>>  $_passwordContrtoller');
                      print(
                          'number=============>>>>>>>>>>  $_numberContrtoller');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Not a member?  ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Register now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF9100)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
