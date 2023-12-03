import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_task_1/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isObscure = false;
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Sign Up",
                style: GoogleFonts.quicksand(fontSize: 32, color: Colors.white),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CircleAvatar(
                radius: height * 0.07,
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: height * 0.03,
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
                          hintText: "Enter your Name",
                          border: InputBorder.none),
                    ),
                  )),
              SizedBox(
                height: height * 0.03,
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
                height: height * 0.03,
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
                      obscureText: !isObscure,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            icon: isObscure
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                          hintText: "Enter your Password",
                          border: InputBorder.none),
                    ),
                  )),
              SizedBox(
                height: height * 0.03,
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
                          hintText: "Enter your Gender",
                          border: InputBorder.none),
                    ),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    "Student?",
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
                    "Sign Up",
                    style: GoogleFonts.quicksand(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an Account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Loginpage()));
                      },
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
