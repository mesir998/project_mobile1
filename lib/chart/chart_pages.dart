import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngopi_asu/network/api.dart';

class Chart extends StatefulWidget {
  const Chart ({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  bool isChecked = false;
  int quantity = 1;
  final ApiService apiService = ApiService('https://ee3d-180-244-162-116.ngrok-free.app/api');

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Keranjang',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600,
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
      ),
      body:Center(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 2,
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(16.0)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(20.0),
                                  width: 30,
                                  height: 23,
                                  decoration: BoxDecoration(
                                    color: isChecked ? const Color(0xff013F0C) : const Color(0xffA97932),
                                  ),
                                  child: isChecked
                                      ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )
                                      : null,
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/susugrasss.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Susu Grass Jelly',
                                        style: GoogleFonts.roboto(
                                          color: const Color(0xff4D4D4D),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Divider(
                                        color: Color(0xff000000),
                                        thickness: 1,
                                      ),
                                      const SizedBox(height: 2),
                                      Row(
                                        children: [
                                          Text(
                                            'Rp. ',
                                            style: GoogleFonts.roboto(
                                              color: const Color(0xff4D4D4D),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '24.000',
                                            style: GoogleFonts.roboto(
                                              color: const Color(0xff4D4D4D),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          Row(
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  // Handle the "-" button press
                                                  if (quantity > 1) {
                                                    setState(() {
                                                      quantity--;
                                                    });
                                                  }
                                                },
                                                style: TextButton.styleFrom(
                                                  padding: const EdgeInsets.all(0),
                                                  minimumSize: const Size(28, 28),
                                                  backgroundColor: const Color(0xffA97932),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50),
                                                    side: const BorderSide(color: Color(0xffEAEAEA)),
                                                  ),
                                                ),
                                                child: Text(
                                                  "-",
                                                  style: GoogleFonts.sora(
                                                    color: const Color(0xff4D4D4D),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                quantity.toString(), // Display the quantity
                                                style: GoogleFonts.sora(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  // Handle the "+" button press
                                                  setState(() {
                                                    quantity++;
                                                  });
                                                },
                                                style: TextButton.styleFrom(
                                                  padding: const EdgeInsets.all(0),
                                                  minimumSize: const Size(28, 28),
                                                  backgroundColor: const Color(0xffA97932),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50),
                                                    side: const BorderSide(color: Color(0xffEAEAEA)),
                                                  ),
                                                ),
                                                child: Text(
                                                  "+",
                                                  style: GoogleFonts.sora(
                                                    color: const Color(0xff4D4D4D),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isChecked = !isChecked;
                                  });
                                },
                                child: Container(
                                  height: 150,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(20.0),
                                        width: 30,
                                        height: 23,
                                        decoration: BoxDecoration(
                                          color: isChecked ? const Color(0xff013F0C) : const Color(0xffA97932),
                                        ),
                                        child: isChecked
                                            ? const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )
                                            : null,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.all(5),
                                        width: 100,
                                        height: 100,
                                        child: Image.asset(
                                          'assets/images/PASAL1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pasal 1',
                                              style: GoogleFonts.roboto(
                                                color: const Color(0xff4D4D4D),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Divider(
                                              color: Color(0xff000000),
                                              thickness: 1,
                                            ),
                                            const SizedBox(height: 2),
                                            Row(
                                              children: [
                                                Text(
                                                  'Rp. ',
                                                  style: GoogleFonts.roboto(
                                                    color: const Color(0xff4D4D4D),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  '28.000',
                                                  style: GoogleFonts.roboto(
                                                    color: const Color(0xff4D4D4D),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                Row(
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {
                                                        // Handle the "-" button press
                                                        if (quantity > 1) {
                                                          setState(() {
                                                            quantity--;
                                                          });
                                                        }
                                                      },
                                                      style: TextButton.styleFrom(
                                                        padding: const EdgeInsets.all(0),
                                                        minimumSize: const Size(28, 28),
                                                        backgroundColor: const Color(0xffA97932),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(50),
                                                          side: const BorderSide(color: Color(0xffEAEAEA)),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "-",
                                                        style: GoogleFonts.sora(
                                                          color: const Color(0xff4D4D4D),
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      quantity.toString(), // Display the quantity
                                                      style: GoogleFonts.sora(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    TextButton(
                                                      onPressed: () {
                                                        // Handle the "+" button press
                                                        setState(() {
                                                          quantity++;
                                                        });
                                                      },
                                                      style: TextButton.styleFrom(
                                                        padding: const EdgeInsets.all(0),
                                                        minimumSize: const Size(28, 28),
                                                        backgroundColor: const Color(0xffA97932),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(50),
                                                          side: const BorderSide(color: Color(0xffEAEAEA)),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "+",
                                                        style: GoogleFonts.sora(
                                                          color: const Color(0xff4D4D4D),
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 437,
              height: 94,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Harga',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Rp. 52.000',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Color(0xffA97932),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/order');
                    },
                    child: Container(
                      width: 166,
                      height: 41,
                      decoration: BoxDecoration(
                        color: Color(0xffAD7C33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Pesan Sekarang',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
