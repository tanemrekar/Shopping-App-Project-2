import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/credentials/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController user = TextEditingController();
GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
bool isVisible = false;
bool isOpen = false;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _globalKey,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (emailValue) {
                      if (emailValue!.isEmpty) {
                        return "please enter your email";
                      } else if (emailValue.contains("@") &&
                          emailValue.endsWith('.com')) {
                        return null;
                      } else {
                        return "invalid email";
                      }
                    },
                    controller: email,
                    decoration: InputDecoration(
                        label: const Text(
                          "Email",
                          style: TextStyle(fontSize: 23, color: Colors.green),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                const BorderSide(color: Colors.purple))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (passValue) {
                      if (passValue!.isEmpty) {
                        return "please enter your password";
                      } else if (passValue.length < 5) {
                        return "password should be more than 5 digits";
                      }
                      return null;
                    },
                    obscureText: isOpen,
                    controller: password,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isOpen = !isOpen;
                            });
                          },
                          child: Icon(isOpen
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined),
                        ),
                        label: const Text(
                          "Password",
                          style: TextStyle(fontSize: 23, color: Colors.green),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                const BorderSide(color: Colors.purple))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onPressed: () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                            email: email.text.trim(),
                            password: password.text.trim())
                            .then((value) {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                        });
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.arima(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(const Login(),
                                duration: const Duration(seconds: 1),
                                transition: Transition.zoom);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 22,
                                decoration: TextDecoration.underline),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
