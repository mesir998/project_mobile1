import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RiwayatPesanan5 extends StatefulWidget {
  const RiwayatPesanan5({super.key});

  @override
  State<RiwayatPesanan5> createState() => _RiwayatPesanan5State();
}

class _RiwayatPesanan5State extends State<RiwayatPesanan5> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/riwayat_pesanan4');
              },
              child: Text(
                'Sedang Jalan',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 90),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/riwayat_pesanan5');
              },
              child: Text(
                'Selesai',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xffA97932),
                  color: const Color(0xffA97932),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
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
                                const SizedBox(width:35),
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
                                      text: 'Pesanan Selesai',
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
                                    Navigator.pushNamed(context, '/pesanan_pickup');
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
    );
  }
}
