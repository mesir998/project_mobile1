import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngopi_asu/pengiriman/button_deliver/deliver.dart';

class Order19 extends StatefulWidget {
  const Order19({super.key});

  @override
  State<Order19> createState() => _Order19State();
}

class _Order19State extends State<Order19> {
  int quantity = 1;
  int pricePerItem = 10000;

  int calculateTotalPrice() {
    int itemTotal = quantity * pricePerItem;
    return itemTotal;
  }

  double calculateTotalPayment() {
    int itemTotal = quantity * pricePerItem;
    int deliveryFee = 6000;
    return (itemTotal + deliveryFee) / 1;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Order',
          style: GoogleFonts.sora(
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.050,
            ),
            const Deliver(),
            SizedBox(
              height: size.height * 0.040,
            ),
            Container(
              width: 415,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff1C1B1F),
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Pickup Point',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xff4D4D4D),
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Prework Coffee Duri Kepa',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/pickup');
                              },
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff828282),
                                size: 24,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(right: 30),
                    width: 361,
                    height: 29,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Jalan Arjuna Utara No.25, Jakarta Barat',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff828282),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 415,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/rotimartabak.png",
                          width: 61,
                          height: 72,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Roti Coklat Klasik",
                            style: GoogleFonts.sora(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff2F2D2C),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Rp. 10.000",
                            style: GoogleFonts.sora(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff9B9B9B),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
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
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(color: Color(0xffEAEAEA)),
                          ),
                        ),
                        child: Text(
                          "-",
                          style: GoogleFonts.sora(
                            color: const Color(0xffAAADB0),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        quantity.toString(), // Display the quantity
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
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
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(color: Color(0xffEAEAEA)),
                          ),
                        ),
                        child: Text(
                          "+",
                          style: GoogleFonts.sora(
                            color: const Color(0xffAAADB0),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 415,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Jumlah Pembayaran",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xff4D4D4D),
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Rp. ${calculateTotalPrice()}",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order Fee",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Rp. 9.000",
                              style: GoogleFonts.roboto(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Rp. 6.000",
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Pembayaran",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Rp. ${calculateTotalPayment().toStringAsFixed(0)}",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 415,
              height: 58,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Metode Pembayaran',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          'Payment On Spot (POS)',
                          style: GoogleFonts.roboto(
                              color: const Color(0xff828282),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 70),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/riwayat_pesanan4');
              },
              child: Container(
                width: 373,
                height: 41,
                decoration: BoxDecoration(
                  color: const Color(0xffB7802F),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Konfirmasi Pemesanan',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
