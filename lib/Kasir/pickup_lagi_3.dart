import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickupLagi3 extends StatefulWidget {
  const PickupLagi3({super.key});

  @override
  State<PickupLagi3> createState() => _PickupLagi3State();
}

class _PickupLagi3State extends State<PickupLagi3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/pickup_lagi');
              },
              child: Text(
                'Siap Pickup',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 90),
             Text(
                'Selelsai',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xffA97932),
                  color: const Color(0xffA97932),
                ),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 2,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              width: 396,
                              height: 118,
                            ),
                            Positioned(
                                top: 8,
                                left: 8,
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              'Prework Coffee PIM 1',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                            ),
                                            const SizedBox(width:55),
                                            Text(
                                              '11 Nov 2023, 11:44',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 13,
                                                color: const Color(0xff9A9A9A),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: Text(
                                            'No Order #PWO11112023-0118',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Status Pesanan : ',
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    color: const Color(0xff000000),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'Pesanan Selesai  ',
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 13,
                                                    color: const Color(0xffA97932),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 25),
                                              child: Text(
                                                'Total 1 Menu - Rp 30.400',
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: const Color(0xff9A9A9A),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 130),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pushNamed(context, '/riwayat_pesanan3');
                                              },
                                              child: Container(
                                                width: 62,
                                                height: 23,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: const Color(0xffA97932),
                                                  ),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Detail',
                                                    style: GoogleFonts.inter(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold,
                                                      color: const Color(0xffA97932),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 420,
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/kelola_menu');
                    },
                    child: Column(
                      children: [
                        const Icon(
                          Icons.add_business,
                          color:  Color(0xff4D4D4D),
                          size: 30,
                        ),
                        Text(
                          'Kelola Menu',
                          style: GoogleFonts.inter(
                              color:const Color(0xff4D4D4D),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/pesanan_pickup');
                    },
                    child: Column(
                      children: [
                        const Icon(
                          Icons.document_scanner,
                          color:  Color(0xffA97932),
                          size: 30,
                        ),
                        Text(
                          'Pesanan',
                          style: GoogleFonts.inter(
                              color:  const Color(0xffA97932),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/laporan');
                    },
                    child: Column(
                      children: [
                        const Icon(
                          Icons.business_center,
                          color:  Color(0xff4D4D4D),
                          size: 30,
                        ),
                        Text(
                          'Laporan',
                          style: GoogleFonts.inter(
                              color:  const Color(0xff4D4D4D),
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
      )
    );
  }
}


