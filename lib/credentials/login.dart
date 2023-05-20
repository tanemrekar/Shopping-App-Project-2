import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/categories/Categories.dart';
import 'package:shopping_app/credentials/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

GlobalKey<FormState> _key = GlobalKey<FormState>();
bool open = false;

class _LoginState extends State<Login> {
  TextEditingController emaiController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Login ",
                    style: GoogleFonts.arima(
                      fontSize: 35,
                    ),
                  ),
                  TextFormField(
                    validator: (mailValue) {
                      if (mailValue!.isEmpty) {
                        return "please enter your email";
                      } else if (mailValue.contains("@") &&
                          mailValue.endsWith('.com')) {
                        return null;
                      } else {
                        return "invalid email";
                      }
                    },
                    controller: emaiController,
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
                    height: 10,
                  ),
                  TextFormField(
                    validator: (passwordValue) {
                      if (passwordValue!.isEmpty) {
                        return "please enter your password";
                      } else if (passwordValue.length < 5) {
                        return "password should be more than 5 digits";
                      }
                      return null;
                    },
                    obscureText: open,
                    controller: passwordController,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              open = !open;
                            });
                          },
                          child: Icon(open
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
                    height: 10,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          try {
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: emaiController.text.trim(),
                                    password: passwordController.text.trim())
                                .then((value) {
                              Get.to(const Categories(),
                                  duration: const Duration(seconds: 1),
                                  transition: Transition.zoom);
                            });
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.arima(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(const SignUp(),
                                duration: const Duration(seconds: 1),
                                transition: Transition.zoom);
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 22,
                                decoration: TextDecoration.underline),
                          ))
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
