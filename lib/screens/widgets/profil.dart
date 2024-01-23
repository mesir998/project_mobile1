import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngopi_asu/network/api.dart';
import 'package:http/http.dart' as http;

Future<UserProfile> fetchUserProfile() async {
  final response = await http
      .get(Uri.parse('https://ee3d-180-244-162-116.ngrok-free.app/api/user'));

  if (response.statusCode == 200) {

    return UserProfile.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {

    throw Exception('Failed to load album');
  }
}

class UserProfile {
  final int id;
  final String name;
  final String no_telp;
  final String email;

  const UserProfile({
    required this.id,
    required this.name,
    required this.no_telp,
    required this.email,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'id': int id,
      'name': String name,
      'no_telp': String no_telp,
      'email': String email,
      } =>
          UserProfile(
              id: id,
              name: name,
              no_telp: no_telp,
              email: email
          ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool obscureText = true;
  TextEditingController originalPasswordController = TextEditingController();
  TextEditingController obscuredPasswordController = TextEditingController();

  late Future<UserProfile> futureUserProfile;
  @override
  void initState() {
    super.initState();

    obscuredPasswordController.text = '';
    futureUserProfile = fetchUserProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profil',
          style: GoogleFonts.roboto(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.chevron_left,
            color: Color(0xff2F2D2C),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/setelah_login');
                  },
                  child: Container(
                    width: 103,
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xffA97932),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Simpan',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/setelah_login');
                  },
                  child: Container(
                    width: 103,
                    height: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xffA97932),
                        )
                    ),
                    child: Center(
                      child: Text(
                        'Keluar',
                        style: GoogleFonts.inter(
                          color: Color (0xffA97932),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 173,
                height: 150,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 138.47,
                        height: 137,
                        decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(68.5),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/avatar.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffA97932),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.edit,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 348,
                height: 46,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffAD7C33),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: obscureText
                          ? Text(
                        'Password : ${obscuredPasswordController.text}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                          fontSize: 24,
                        ),
                      )
                          : TextField(
                        controller: originalPasswordController,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                          fontSize: 24,
                        ),
                        obscureText: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                            if (obscureText) {
                              obscuredPasswordController.text = '';
                            } else {
                              obscuredPasswordController.text =
                                  originalPasswordController.text;
                            }
                          });
                        },
                        child: Icon(
                          Icons.edit,
                          color: Color(0xff000000),
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                width: 348,
                height: 360,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffCFCDCD),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Text(
                                'Informasi profil',
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffA97932),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                'Nama',
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: FutureBuilder<UserProfile>(
                                    future: futureUserProfile,
                                    builder: (context, snapshot){
                                      if (snapshot.hasData){
                                        return Text(snapshot.data!.name);
                                      }else if (snapshot.hasError){
                                        return Text('${snapshot.error}');
                                      }
                                      return const CircularProgressIndicator();
                                    }
                                )
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50, right: 16),
                              child: Icon(
                                Icons.edit,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color(0xffDADADA),
                      thickness: 1,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Text(
                                'Telepon',
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: FutureBuilder<UserProfile>(
                                    future: futureUserProfile,
                                    builder: (context, snapshot){
                                      if (snapshot.hasData){
                                        return Text(snapshot.data!.no_telp);
                                      }else if (snapshot.hasError){
                                        return Text('${snapshot.error}');
                                      }
                                      return const CircularProgressIndicator();
                                    }
                                )
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8, right: 16),
                              child: Icon(
                                Icons.edit,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color(0xffDADADA),
                      thickness: 1,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 8),
                              child: Text(
                                'Email',
                                style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: FutureBuilder<UserProfile>(
                                    future: futureUserProfile,
                                    builder: (context, snapshot){
                                      if (snapshot.hasData){
                                        return Text(snapshot.data!.email);
                                      }else if (snapshot.hasError){
                                        return Text('${snapshot.error}');
                                      }
                                      return const CircularProgressIndicator();
                                    }
                                )
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8, right: 16),
                              child: Icon(
                                  Icons.edit
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}