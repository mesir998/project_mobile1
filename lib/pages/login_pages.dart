import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ngopi_asu/pages/setelah_login.dart';
import 'package:ngopi_asu/screens/sign_up.dart';
import 'package:ngopi_asu/network/api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  bool _isVisible = false;
  bool _isLoading = false; // Define _isLoading variable

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final ApiService apiService = ApiService('https://ee3d-180-244-162-116.ngrok-free.app/api');

  //diatas buat ganti endpoint ya ges


  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _showMsg(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }

  void _onLoginButtonPressed() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showErrorSnackBar("Email and password are required");
      return;
    }

    if (!email.contains('@gmail.com')) {
      _showErrorSnackBar("Invalid email format. Use '@gmail.com'");
      return;
    } else {
      _showErrorSnackBar("Email or password is incorrect");
    }
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });
    final email = emailController.text;
    final password = passwordController.text;

    try {
      final response = await apiService.post('login', {'email': email, 'password': password});

      if (response.statusCode == 200) {
        // Simpan informasi user dari response API
        final user = jsonDecode(response.body);

        // Pindah ke halaman SetelahLogin dan kirim informasi user
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SetelahLogin(),
          ),
        );
      } else {
        // Handle login failure
        // Misalnya, tampilkan pesan kesalahan
        print('Login failed. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (error) {
      print('Error: $error');
    }



    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sign in your account'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/lambang.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                Center(
                  child: Text(
                    "PREWORK COFFEE.",
                    style: GoogleFonts.sora(
                      color: const Color(0xffBA6E0F),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xffBA6E0F),
                      decorationThickness: 2,
                      height: 2,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Email Text Field
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffA97932),
                      width: 2.0,
                    ),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password Text Field
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffA97932),
                      width: 2.0,
                    ),
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: !_isVisible,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: const Icon(
                        Iconsax.lock,
                        color: Colors.black,
                        size: 30,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffA97932),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffBA6E0F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    text: "Don’t have an account? ",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: " Sign up",
                        style: GoogleFonts.inter(
                          color: const Color(0xffA97932),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}