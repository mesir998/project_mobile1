import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickUp extends StatefulWidget {
  const PickUp({Key? key}) : super(key: key);

  @override
  State<PickUp> createState() => _PickUpState();
}

class _PickUpState extends State<PickUp> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pick up',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              width: 400,
              height: 29,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0xffA97932),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
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
          Container(
            width: 415,
            height: 270,
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
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
                          child: Text(
                            'Prework Coffee Duri Kepa',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'Jalan Arjuna Utara No.25, Jakarta Barat',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Icon(
                            Icons.location_on
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '0.0 Km',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff828282),
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
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            'Prework Coffee Duri PIM 1',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'Mall Pondok Indah Mall Jakarta Selatan',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Icon(
                              Icons.location_on
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '11.5 Km',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff828282),
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
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Text(
                            'Prework Coffee Duri SMB',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'Mall Sumareccon Mall Bekasi',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Icon(
                              Icons.location_on
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '23.7 Km',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff828282),
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
          ),
        ],
      ),
    );
  }
}
