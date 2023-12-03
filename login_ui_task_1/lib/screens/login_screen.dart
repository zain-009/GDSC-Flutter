import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_task_1/screens/signup_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.blueGrey, Colors.blueAccent])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style:
                      GoogleFonts.quicksand(fontSize: 32, color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.quicksand(
                          fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent[900],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black87,
                              blurRadius: .3,
                              spreadRadius: 0,
                              blurStyle: BlurStyle.outer)
                        ]),
                    height: height * 0.06,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Colors.white54),
                            hintText: "Enter your Email",
                            icon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            border: InputBorder.none),
                      ),
                    )),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.quicksand(
                          fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent[900],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black87,
                              blurRadius: .3,
                              blurStyle: BlurStyle.outer)
                        ]),
                    height: height * 0.06,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Colors.white54),
                            hintText: "Enter your Password",
                            icon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            border: InputBorder.none),
                      ),
                    )),
                SizedBox(
                  height: height * 0.01,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.grey,
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        }),
                    const Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                            blurStyle: BlurStyle.outer)
                      ]),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.quicksand(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don\'t have an Account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
