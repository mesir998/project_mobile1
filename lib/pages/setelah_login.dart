import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SetelahLogin extends StatefulWidget {
  const SetelahLogin({super.key});

  @override
  State<SetelahLogin> createState() => _SetelahLoginState();
}

class _SetelahLoginState extends State<SetelahLogin> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  @override
  void initState() {
    super.initState();

    _autoScroll();
  }
  void _autoScroll() {
    Future.delayed(const Duration(seconds: 3), () {
      if (_pageController.page == null) return;
      int nextPage = _pageController.page!.toInt() + 1;
      if (nextPage >= images.length) {
        nextPage = 0;
      }
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _autoScroll();
    });
  }

  List<String> images = [
    'assets/images/Baner1.png',
    'assets/images/Baner2.png',
    // Add more image paths as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: Column(
        children: [
        SizedBox(
        height: 195,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffA97932),
                width: 2.0,
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search ",
                hintStyle: GoogleFonts.inter(
                  color: const Color(0xff66738F),
                  fontSize: 13,
                ),
                prefixIcon: const Icon(
                  Iconsax.search_normal,
                  color: Colors.grey,
                  size: 13,
                ),
                suffixIcon: const SizedBox(
                  width: 44,
                  height: 44,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Non Coffee',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: const Color(0xffA97932),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/pesanan');
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 30, //
                  color: Color(0xff000000),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                    },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20.0, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius:
                          BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/matcha latte.png',
                              height: 190,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 1),
                            Text(
                              'Matcha Latte',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Rp. 28.000',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail_2');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius:
                          BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/milo dino2.png',
                              height: 190,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Milo Dinosaurus  ',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Rp. 30.000',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail_3');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20.0, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius:
                          BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Oreo Shake.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Oreo Shake',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Rp. 35.000',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail_4');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius:
                          BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/susugrasss.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Susu Jelly',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Rp. 30.000',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail_5');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20.0, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius:
                          BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/es teh manis.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Es Teh Manis',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Rp. 15.000',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 1),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail_6');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius:
                          BorderRadius.all(Radius.circular(16.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/sirup coco pandan.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Coco Pandan',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Rp. 30.000',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: const Color(0xffA97932),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/setelah_login');
                  },
                  child: Column(
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Home',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pesanan');
                  },
                  child: Column(
                    children: [
                      const Icon(
                        Iconsax.document,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Pesanan',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/chart');
                  },
                  child: Column(
                    children: [
                      const Icon(
                        Iconsax.shop,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Keranjang',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profil');
                  },
                  child: Column(
                    children: [
                      const Icon(
                        Iconsax.user,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Profil',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}
