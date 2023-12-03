import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_task_1/screens/login_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your Password?",
                      style:
                      GoogleFonts.quicksand(fontSize: height * 0.05, color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    const Text("Don\'t worry, enter your email below. A password recovery link will be sent to your email.",textAlign: TextAlign.justify,style: TextStyle(fontSize: 16,color: Colors.white),),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent[900],
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  blurStyle: BlurStyle.outer)
                            ]),
                        height: height * 0.06,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.white),
                                hintText: "Enter your Email",
                                border: InputBorder.none),
                          ),
                        )),
                    SizedBox(
                      height: height * 0.04,
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
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Loginpage()));
                        },
                        child: Text(
                          "Recover",
                          style: GoogleFonts.quicksand(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
