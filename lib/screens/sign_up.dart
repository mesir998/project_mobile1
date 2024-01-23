import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngopi_asu/pages/login_pages.dart';
import 'package:ngopi_asu/network/api.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  final ApiService apiService = ApiService('https://ee3d-180-244-162-116.ngrok-free.app/api');

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _register() async {
    final name = nameController.text;
    final no_telp = phoneController.text;
    final email = emailController.text;
    final password = passwordController.text;



    final response = await apiService.post('register', {'name': name, 'password': password, 'no_telp' :no_telp, 'email':email });

    if (response.statusCode == 200) {
      _showSnackBar('Registrasi berhasil! Silakan login.');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPages()),
      );
    } else {
      // Handle registration failure
      // Misalnya, tampilkan pesan kesalahan
      print('Registration failed. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sign Your Account'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField('Nama', nameController),
              const SizedBox(height: 16.0),
              _buildTextField('No telp', phoneController),
              const SizedBox(height: 16.0),
              _buildTextField('Email', emailController),
              const SizedBox(height: 16.0),
              _buildPasswordTextField(
                'Password',
                passwordController,
                isPasswordVisible,
                    (value) {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              _buildPasswordTextField(
                'Konfirmasi Password',
                confirmPasswordController,
                isConfirmPasswordVisible,
                    (value) {
                  setState(() {
                    isConfirmPasswordVisible = !isConfirmPasswordVisible;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _register();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffA97932),
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/loginpages');
                  },
                  child: const Text('Already have an account? Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Container(
          height: 45.0,
          decoration: myBoxDecoration(),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              contentPadding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTextField(
      String label,
      TextEditingController controller,
      bool isPasswordVisible,
      void Function(String) onChanged,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Container(
          height: 45.0,
          decoration: myBoxDecoration(),
          child: TextField(
            controller: controller,
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              contentPadding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  onChanged(controller.text);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleSignUp() {
    if (passwordController.text == confirmPasswordController.text) {
      String email = emailController.text;
      if (!email.contains('@gmail.com')) {
        _showErrorSnackBar("Invalid email format. Use '@gmail.com'");
        return;
      }
      Navigator.of(context).pushNamed('/loginpages');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: RichText(
            text: TextSpan(
              text: 'Password dan Konfirmasi',
              style: GoogleFonts.sora(),
              children: const <TextSpan>[
                TextSpan(
                  text: '  Tidak tepat!!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: const Color(0xffA97932),
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}