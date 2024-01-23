import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ngopi_asu/common/app_routes.dart';
import 'package:ngopi_asu/screens/widgets/custom_button.dart';

class Detail14 extends StatefulWidget {
  const Detail14({super.key});

  @override
  State<Detail14> createState() => _Detail14State();
}

class _Detail14State extends State<Detail14> {
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

  void _selectSize(int size) {
    setState(() {
      selectedSize = size;
    });
  }

  Widget _buildSizeContainer(String sizeText, int sizeValue) {
    return GestureDetector(
      onTap: () => _selectSize(sizeValue),
      child: Container(
        width: 74,
        height: 42,
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedSize == sizeValue
                ? Color(0xffA97932)
                : Colors.white,
          ),
          color: selectedSize == sizeValue
              ? Color(0xffA97932)
              : Colors.white,
        ),
        child: Center(
          child: Text(
            sizeText,
            style: GoogleFonts.roboto(
              color: selectedSize == sizeValue
                  ? Colors.white
                  : Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
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
                  image: AssetImage("assets/images/kenangan.png"),
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
                    "Kenangan",
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
                          "kenangan adalah merujuk pada momen atau pengalaman yang terkait dengan kopi, yang meninggalkan kesan mendalam dalam ingatan seseorang. Ini bisa menjadi momen yang menyenangkan, romantis, produktif, atau bahkan mendalam, yang terjadi saat menikmati secangkir kopi.",
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
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Size',
                        style: GoogleFonts.roboto(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildSizeContainer('S', 1),
                          _buildSizeContainer('M', 2),
                          _buildSizeContainer('L', 3),
                        ],
                      ),
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
                      "Rp. 28.000",
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
                        Navigator.pushNamed(context, Routes.order_14),
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