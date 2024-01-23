import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ngopi_asu/common/app_routes.dart';
import 'package:ngopi_asu/screens/widgets/custom_button.dart';

class Detail15 extends StatefulWidget {
  const Detail15({super.key});

  @override
  State<Detail15> createState() => _Detail15State();
}

class _Detail15State extends State<Detail15> {
  bool isFavorite = false;
  int selectedSize = 1;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.050,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Color(0xff2F2D2C),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.095,
                  ),
                  Text(
                    'Detail',
                    style: GoogleFonts.sora(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.095,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                        color: isFavorite ? Colors.pink : Colors.transparent,
                      ),
                      child: Icon(
                        Iconsax.heart,
                        color: isFavorite
                            ? Colors.white
                            : const Color(0xff2F2D2C),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.030,
            ),
            Container(
              width: 315,
              height: 226,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage("assets/images/kue 1.png"),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.020,
            ),
            SizedBox(
              width: 315,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Red Velvet Madness",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff2F2D2C)),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 340,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Iconsax.star1,
                          color: Color(0xffFBBE21),
                        ),
                      ),
                      Text(
                        "4.8",
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff2F2D2C),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      Text(
                        "(230)",
                        style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 315,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.010,
                  ),
                  Container(
                    height: 2,
                    decoration: const BoxDecoration(color: Color(0xffEAEAEA)),
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.010,
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                          "Red Velvet adalah jenis kue yang terkenal karena warna merah khasnya dan kelembutan serta kelembutan teksturnya. Kue Red Velvet sering diidentifikasi dengan lapisan keju krim yang lezat sebagai hiasan atau lapisan tengahnya.",
                          style: GoogleFonts.inter(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.64
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.070,
                  ),
                  SizedBox(
                    height: size.height * 0.070,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 121,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff000000)),
                    ),
                    Text(
                      "Rp. 25.000",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffA97932)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 217,
                  height: 62,
                  child: CustomButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, Routes.order_15),
                    title: 'Pesan Sekarang',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}