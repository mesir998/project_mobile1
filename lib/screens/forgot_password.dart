import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sign in your account'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Masukkan email atau nomor telepon Anda',
              style: GoogleFonts.inter(
                color: Color(0xffA97932),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email atau Nomor Telepon',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
