import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeSize extends StatefulWidget {
  final String title;
  final int index;
  final int selectedSize;
  final Function() onClick;

  const CoffeeSize({
    Key? key,
    required this.title,
    required this.index,
    required this.selectedSize,
    required this.onClick,
  }) : super(key: key);

  @override
  State<CoffeeSize> createState() => _CoffeeSizeState();
}

class _CoffeeSizeState extends State<CoffeeSize> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onClick(),
      child: Column(
        children: [
          Container(
            width: 96,
            height: 43,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: widget.index == widget.selectedSize ? const Color(0xffFFF5EE) : Colors.white,
              border: Border.all(
                color: widget.index == widget.selectedSize ? const Color(0xffC67C4E) : const Color(0xffDEDEDE),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              widget.title,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: widget.index == widget.selectedSize ? const Color(0xffC67C4E) : Colors.black,
              ),
            ),
          ),
          if (widget.index == widget.selectedSize)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.index == 0 ? "Rp. 2.000" : "",
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffA97932),
                ),
              ),
            ),
          if (widget.index == widget.selectedSize)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.index == 1 ? "Rp. 5.000" : "",
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffA97932),
                ),
              ),
            ),
          if (widget.index == widget.selectedSize)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.index == 2 ? "Rp. 10.000" : "",
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffA97932),
                ),
              ),
            ),
        ],
      ),
    );
  }
}