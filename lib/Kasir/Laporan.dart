import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Laporan extends StatefulWidget {
  const Laporan({super.key});

  @override
  State<Laporan> createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Laporan',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 28
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                      child: Row(
                        children: [
                          const Icon(Icons.request_page),
                          const SizedBox(width: 10),
                          Text(
                            'Pendapatan ',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 130),
                          Text(
                            '2023 - 12 - 22',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: const Color(0xff9A9A9A)
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.edit,
                            size: 15,
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
            const SizedBox(height: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 15, top: 1),
                        child: Row(
                          children: [
                            Text(
                              'Penjualan Makanan dan Minuman ',
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
            const SizedBox(height: 4),
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
                            const SizedBox(width: 10),
                            Text(
                              'Makanan ',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff4D4D4D),
                              ),
                            ),
                            const SizedBox(width: 165),
                            Text(
                              'Rp.145.000.000',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: const Color(0xff4D4D4D)
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.edit,
                              size: 15,
                            )
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
            const SizedBox(height: 4),
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
                            const SizedBox(width: 10),
                            Text(
                              'Minuman ',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff4D4D4D),
                              ),
                            ),
                            const SizedBox(width: 165),
                            Text(
                              'Rp.87.000.000',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: const Color(0xff4D4D4D)
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.edit,
                              size: 15,
                            )
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
            const SizedBox(height: 4),
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
                            const SizedBox(width: 10),
                            Text(
                              'Total Pedapatan',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffA97932),
                              ),
                            ),
                            const SizedBox(width: 120),
                            Text(
                              'Rp.232.000.000',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: const Color(0xffA97932)
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.edit,
                              size: 15,
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
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
                                'Pendapatan ',
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 130),
                              Text(
                                '2023 - 12 - 22',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: const Color(0xff9A9A9A)
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.edit,
                                size: 15,
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
                const SizedBox(height: 2),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15, top: 1),
                            child: Row(
                              children: [
                                Text(
                                  'Penjualan Makanan dan Minuman ',
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
                const SizedBox(height: 4),
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
                                const SizedBox(width: 10),
                                Text(
                                  'Makanan ',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff4D4D4D),
                                  ),
                                ),
                                const SizedBox(width: 165),
                                Text(
                                  'Rp.155.000.000',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: const Color(0xff4D4D4D)
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Icons.edit,
                                  size: 15,
                                )
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
                const SizedBox(height: 4),
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
                                const SizedBox(width: 10),
                                Text(
                                  'Minuman ',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff4D4D4D),
                                  ),
                                ),
                                const SizedBox(width: 165),
                                Text(
                                  'Rp.90.000.000',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: const Color(0xff4D4D4D)
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Icons.edit,
                                  size: 15,
                                )
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
                const SizedBox(height: 4),
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
                                const SizedBox(width: 10),
                                Text(
                                  'Total Pedapatan',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffA97932),
                                  ),
                                ),
                                const SizedBox(width: 120),
                                Text(
                                  'Rp.245.000.000',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: const Color(0xffA97932)
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Icons.edit,
                                  size: 15,
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/laporan_2');
                },
                child: Container(
                  width: 305,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color(0xffA97932),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Simpan',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                  width: 305,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    border: Border.all(
                      color: const Color(0xffA97932),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Batal',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffA97932),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 76),
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
                          color:  Color(0xff4D4D4D),
                          size: 30,
                        ),
                        Text(
                          'Pesanan',
                          style: GoogleFonts.inter(
                              color:  const Color(0xff4D4D4D),
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
                          color:  Color(0xffA97932),
                          size: 30,
                        ),
                        Text(
                          'Laporan',
                          style: GoogleFonts.inter(
                              color:  const Color(0xffA97932),
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
      ),
    );
  }
}
