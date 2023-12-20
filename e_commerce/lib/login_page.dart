import 'package:e_commerce/bottom_navbar.dart';
import 'package:e_commerce/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 290,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 241, 244),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(Icons.arrow_back),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 241, 244),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                color: Colors.black,
                              )),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Welcome To\n UMAH!',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Image.asset(
                        'assets/images/image.png',
                        width: 220,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black, width: 1),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.email, color: Colors.black, size: 20),
                  ),
                  hintText: 'Enter Email',
                  hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black, width: 1),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.lock, color: Colors.black, size: 20),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    activeColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    //only check box
                    value: check1, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check1 = value;
                      });
                    }),
                Text(
                  "Remember Me",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.85,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NavBar()), // Replace with your main screen
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Quicksand'),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.transparent,
                  onSurface: Colors.transparent,
                  shadowColor: Colors.transparent,
                  //make color or elevated button transparent
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 1,
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' Or login with ',
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 1,
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 241, 244),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 220,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 241, 244),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Image.asset(
                      'assets/images/apple.png',
                      width: 220,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 241, 244),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 220,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  "register",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
