import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KelolaMenu extends StatefulWidget {
  const KelolaMenu({Key? key}) : super(key: key);

  @override
  State<KelolaMenu> createState() => _KelolaMenuState();
}

class _KelolaMenuState extends State<KelolaMenu> {
  final TextEditingController _searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kelola Menu',
          style: GoogleFonts.roboto(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            iconSize: 40,
            onPressed: () {
              Navigator.pushNamed(context, '/tambah_menu');
            },
          ),
        ],
      ),
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                width: 400,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xffA97932),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.search_outlined,
                        color: Color(0xff66738F),
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: TextField(
                          controller: _searchController,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: GoogleFonts.inter(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           Expanded(
             child: ListView(
               scrollDirection: Axis.vertical,
               children: [
                 Center(
                     child: Column(
                       children: [
                         SizedBox(
                           width: 396,
                           height: 118,
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 margin: const EdgeInsets.only(left: 10, right: 10),
                                 width: 60,
                                 height: 83,
                                 decoration: const BoxDecoration(
                                   color: Color(0xffD9D9D9),
                                   image: DecorationImage(
                                     image: AssetImage("assets/images/kopi dolce.png"),
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                               ),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Kopi Dolce',
                                       style: GoogleFonts.roboto(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     const SizedBox(height: 5),
                                     Text(
                                       'Rp. 28.000',
                                       style: GoogleFonts.roboto(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Stok: 22',
                                       style: GoogleFonts.roboto(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     const SizedBox(height: 40),
                                     Center(
                                       child: Row(
                                         children: [
                                           GestureDetector(
                                             onTap: () {
                                               Navigator.pushNamed(context, '/edit_menu');
                                             },
                                             child: Container(
                                               width: 61,
                                               height: 30,
                                               decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(8),
                                                 border: Border.all(
                                                   color: const Color(0xffA97932),
                                                 ),
                                               ),
                                               child: Center(
                                                 child: Text(
                                                   'Edit',
                                                   style: GoogleFonts.inter(
                                                     color: const Color(0xffA97932),
                                                     fontWeight: FontWeight.bold,
                                                   ),
                                                 ),
                                               ),
                                             ),
                                           ),
                                           const SizedBox(width: 8),
                                           Container(
                                             width: 61,
                                             height: 30,
                                             decoration: BoxDecoration(
                                               color: const Color(0xffA97932),
                                               border: Border.all(
                                                 color: const Color(0xffA97932),
                                               ),
                                               borderRadius: BorderRadius.circular(8),
                                             ),
                                             child: Center(
                                               child: Text(
                                                 'Hapus',
                                                 style: GoogleFonts.inter(
                                                   color: Colors.white,
                                                   fontWeight: FontWeight.bold,
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 5),
                       ],
                     ),
                   ),
                   Center(
                     child: Column(
                       children: [
                         SizedBox(
                           width: 396,
                           height: 118,
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 margin: const EdgeInsets.only(left: 10, right: 10),
                                 width: 60,
                                 height: 83,
                                 decoration: const BoxDecoration(
                                   color: Color(0xffD9D9D9),
                                   image: DecorationImage(
                                     image: AssetImage("assets/images/susugrasss.png"),
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                               ),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Susu Grass Jelly',
                                       style: GoogleFonts.roboto(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     const SizedBox(height: 5),
                                     Text(
                                       'Rp. 24.000',
                                       style: GoogleFonts.roboto(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Stok: 55',
                                       style: GoogleFonts.roboto(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     const SizedBox(height: 40),
                                     Center(
                                       child: Row(
                                         children: [
                                           GestureDetector(
                                             onTap: () {
                                               Navigator.pushNamed(context, '/edit_menu');
                                             },
                                             child: Container(
                                               width: 61,
                                               height: 30,
                                               decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(8),
                                                 border: Border.all(
                                                   color: const Color(0xffA97932),
                                                 ),
                                               ),
                                               child: Center(
                                                 child: Text(
                                                   'Edit',
                                                   style: GoogleFonts.inter(
                                                     color: const Color(0xffA97932),
                                                     fontWeight: FontWeight.bold,
                                                   ),
                                                 ),
                                               ),
                                             ),
                                           ),
                                           const SizedBox(width: 8),
                                           Container(
                                             width: 61,
                                             height: 30,
                                             decoration: BoxDecoration(
                                               color: const Color(0xffA97932),
                                               border: Border.all(
                                                 color: const Color(0xffA97932),
                                               ),
                                               borderRadius: BorderRadius.circular(8),
                                             ),
                                             child: Center(
                                               child: Text(
                                                 'Hapus',
                                                 style: GoogleFonts.inter(
                                                   color: Colors.white,
                                                   fontWeight: FontWeight.bold,
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 5),
                       ],
                     ),
                   ),
                   Center(
                     child: Column(
                       children: [
                         SizedBox(
                           width: 396,
                           height: 118,
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 margin: const EdgeInsets.only(left: 10, right: 10),
                                 width: 60,
                                 height: 83,
                                 decoration: const BoxDecoration(
                                   color: Color(0xffD9D9D9),
                                   image: DecorationImage(
                                     image: AssetImage("assets/images/rotimartabak.png"),
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                               ),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Roti Martabak',
                                       style: GoogleFonts.roboto(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     const SizedBox(height: 5),
                                     Text(
                                       'Rp. 12.000',
                                       style: GoogleFonts.roboto(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               Expanded(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Stok: 45',
                                       style: GoogleFonts.roboto(
                                         fontSize: 15,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     const SizedBox(height: 40),
                                     Center(
                                       child: Row(
                                         children: [
                                           GestureDetector(
                                             onTap: () {
                                               Navigator.pushNamed(context, '/edit_menu');
                                             },
                                             child: Container(
                                               width: 61,
                                               height: 30,
                                               decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(8),
                                                 border: Border.all(
                                                   color: const Color(0xffA97932),
                                                 ),
                                               ),
                                               child: Center(
                                                 child: Text(
                                                   'Edit',
                                                   style: GoogleFonts.inter(
                                                     color: const Color(0xffA97932),
                                                     fontWeight: FontWeight.bold,
                                                   ),
                                                 ),
                                               ),
                                             ),
                                           ),
                                           const SizedBox(width: 8),
                                           Container(
                                             width: 61,
                                             height: 30,
                                             decoration: BoxDecoration(
                                               color: const Color(0xffA97932),
                                               border: Border.all(
                                                 color: const Color(0xffA97932),
                                               ),
                                               borderRadius: BorderRadius.circular(8),
                                             ),
                                             child: Center(
                                               child: Text(
                                                 'Hapus',
                                                 style: GoogleFonts.inter(
                                                   color: Colors.white,
                                                   fontWeight: FontWeight.bold,
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 5),
                       ],
                     ),
                   ),
               ],
             ),
           ),
              Container(
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
                            color:  Color(0xffA97932),
                            size: 30,
                          ),
                          Text(
                            'Kelola Menu',
                            style: GoogleFonts.inter(
                                color:Color(0xffA97932),
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
                                color:  Color(0xff4D4D4D),
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
                                color:  Color(0xff4D4D4D),
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
