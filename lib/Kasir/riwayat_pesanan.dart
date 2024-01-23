import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngopi_asu/screens/widgets/custom_line.dart';

class RiwayatPesanan extends StatefulWidget {
  const RiwayatPesanan({super.key});

  @override
  State<RiwayatPesanan> createState() => _RiwayatPesananState();
}

class _RiwayatPesananState extends State<RiwayatPesanan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pesanan',
          style: GoogleFonts.roboto(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:Center(
        child: Column(
          children: [
            SizedBox(
              width: 405,
              height: 92,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xffA97932),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.sync,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Diproses',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const CustomLine(),
                      const SizedBox(width: 1),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: const Icon(
                              Icons.store,
                              color: Color(0xff1C1B1F),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Siap DiPickup',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const CustomLine(),
                      const SizedBox(width:1),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Selesai',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
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
                                child: Row(
                                  children: [
                                    const Icon(Icons.note_add),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Detail Pesanan ',
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 80),
                                    Text(
                                      '20 Nov 2023, 17:40',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: const Color(0xff9A9A9A)
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff4D4D4D),
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
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.account_circle,
                                      color: Color(0xff1C1B1F),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Nama Pelanggan ',
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff9A9A9A),
                                      ),
                                    ),
                                  ],
                                )
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(left: 43),
                                child: Text(
                                  'Andika Dzaki Ramadhan',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff4D4D4D),
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
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Color(0xff1C1B1F),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Pickup Di ',
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff9A9A9A),
                                      ),
                                    ),
                                  ],
                                )
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(left: 43),
                                child: Text(
                                  'Prework Coffee Duri Kepa',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff000000),
                        thickness: 1,
                      ),
                    ],
                  ),
                  const SizedBox(height:25),
                  Column(
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
                                child: Row(
                                  children: [
                                    const Icon(Icons.shopping_cart),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Pesanan   ',
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 190),
                                    Text(
                                      'Total 1 item',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: const Color(0xff9A9A9A)
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff4D4D4D),
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
                                  padding: const EdgeInsets.only(left: 10, top: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        '1 x ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        'Matcha Latte',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Normal Ice, Normal Sugar, Size M',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff868686),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Column(
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
                                child: Row(
                                  children: [
                                    const Icon(Icons.request_page),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Detail Pembayaran ',
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width:55),
                                    Text(
                                      '#PWO11112023-0118',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: const Color(0xff9A9A9A)
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff4D4D4D),
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
                                  child: Row(
                                    children: [
                                     Text(
                                       'Subtotal ',
                                       style: GoogleFonts.roboto(
                                         fontSize: 16,
                                         color: const Color(0xff4D4D4D),
                                         fontWeight: FontWeight.bold
                                       ),
                                     ),
                                      const SizedBox(width: 230),
                                      Text(
                                        'Rp. 28.000 ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff4D4D4D),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff4D4D4D),
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
                                  child: Row(
                                    children: [
                                      Text(
                                        'Order Fee ',
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            color: const Color(0xff4D4D4D),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const SizedBox(width: 230),
                                      Text(
                                        'Rp. 2.000 ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff4D4D4D),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff000000),
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
                                  child: Row(
                                    children: [
                                      Text(
                                        'Pajak ',
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            color: const Color(0xff4D4D4D),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const SizedBox(width: 265),
                                      Text(
                                        'Rp. 2.800 ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff4D4D4D),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff000000),
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
                                  child: Row(
                                    children: [
                                      Text(
                                        'Total Pembayaran ',
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            color: const Color(0xffA97932),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const SizedBox(width: 160),
                                      Text(
                                        'Rp. 30.800 ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xffA97932),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xff000000),
                        thickness: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 437,
              height: 94,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                     Navigator.pushNamed(context, '/pickup_lagi');
                    },
                    child: Container(
                      width: 170,
                      height: 41,
                      decoration: BoxDecoration(
                          color: const Color(0xffAD7C33),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                          'Terima',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: Container(
                      width: 170,
                      height: 41,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          border: Border.all(
                            color: const Color(0xffAD7C33),
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                          'Tolak',
                          style: GoogleFonts.roboto(
                            color: const Color(0xffAD7C33),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
