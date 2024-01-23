import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deliver extends StatefulWidget {
  const Deliver({super.key});

  @override
  State<Deliver> createState() => _DeliverState();
}

class _DeliverState extends State<Deliver> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317,
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffA97932),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Pickup",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
