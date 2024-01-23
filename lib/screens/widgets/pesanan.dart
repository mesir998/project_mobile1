import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({Key? key}) : super(key: key);

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  Color paketComboColor = const Color(0xff4D4D4D);
  Color minumanColor = const Color(0xff4D4D4D);
  Color makananColor = const Color(0xff4D4D4D);

  bool isHomeClicked = false;
  bool isDocumentScannerClicked = false;
  bool isShoppingCartRoundedClicked = false;
  int delayDuration = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            margin: const EdgeInsets.only(
                left: 5.0, right: 10.0, bottom: 10, top: 40
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pesanan');
                    setState(() {
                      paketComboColor = const Color(0xffA97932);
                      minumanColor = const Color(0xff4D4D4D);
                      makananColor = const Color(0xff4D4D4D);
                    });
                    print('Paket Combo clicked');
                    Future.delayed(const Duration(seconds: 1)).then((_) {
                      setState(() {
                        paketComboColor = const Color(0xff4D4D4D);
                      });
                    });
                  },
                  child: Text(
                    'Paket Combo ',
                    style: GoogleFonts.inter(
                      color: paketComboColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/minuman');
                    setState(() {
                      minumanColor = const Color(0xffA97932);
                      paketComboColor = const Color(0xff4D4D4D);
                      makananColor = const Color(0xff4D4D4D);
                    });
                    print('Minuman clicked');
                    Future.delayed(const Duration(seconds: 1)).then((_) {
                      setState(() {
                        minumanColor = const Color(0xff4D4D4D);
                      });
                    });
                  },
                  child: Text(
                    'Minuman ',
                    style: GoogleFonts.inter(
                      color: minumanColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/makanan');
                    setState(() {
                      makananColor = const Color(0xffA97932);
                      minumanColor = const Color(0xff4D4D4D);
                      paketComboColor = const Color(0xff4D4D4D);
                    });
                    print('Makanan clicked');
                    Future.delayed(const Duration(seconds: 1)).then((_) {
                      setState(() {
                        makananColor = const Color(0xff4D4D4D);
                      });
                    });
                  },
                  child: Text(
                    'Makanan',
                    style: GoogleFonts.inter(
                      color: makananColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail_7');
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
                              'assets/images/PASAL1.png',
                              height: 190,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 1),
                            Text(
                              'Pasal 1',
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
                        Navigator.pushNamed(context, '/detail_8');
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
                              'assets/images/Bucin.png',
                              height: 190,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 1),
                            Text(
                              'Bucin',
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
                        Navigator.pushNamed(context, '/detail_9');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20.0, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Cinlok.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Cinlok',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 15,
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
                        Navigator.pushNamed(context, '/detail_10');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Pasal 2.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Pasal 2',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 15,
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
                        Navigator.pushNamed(context, '/detail_11');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20.0, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Peka.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Peka',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
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
                        Navigator.pushNamed(context, '/detail_12');
                      },
                      child:Container(
                        height: 250,
                        width: 170,
                        margin: const EdgeInsets.only(left: 20, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Modus.png',
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Modus',
                              style: GoogleFonts.inter(
                                color: const Color(0xffA97932),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
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
        ],
      ),
    );
  }
}
