import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/bond/bond_model.dart';
import '../helper/highlightMatchSpan.dart';

class BondCard extends StatelessWidget {
  final BondModel bond;
  final String? highlightQuery;

  const BondCard({super.key, required this.bond, this.highlightQuery});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0xFFE5E7EB), width: 0.6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(4), // adjust as needed
                child: Image.network(
                  bond.logo,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => const Icon(Icons.image, size: 20),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      ...highlightSpan(
                        text: bond.isin.substring(0, bond.isin.length - 4),
                        query: highlightQuery,
                        baseStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                        highlightStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      ...highlightSpan(
                        text: bond.isin.substring(bond.isin.length - 4),
                        query: highlightQuery,
                        baseStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.5,
                          color: const Color(0xFF101828),
                        ),
                        highlightStyle: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.5,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),

                // ✅ Highlighted Rating & Company Name
                Text.rich(
                  TextSpan(
                    children: highlightSpan(
                      text: '${bond.rating} • ${bond.companyName}',
                      query: highlightQuery,
                      baseStyle: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF9E9E9E),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.25, left: 4.5),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 9.5,
              color: const Color(0xFF1447E6),
              opticalSize: 3.75, // optional, if you're using variable fonts
            ),
          )
        ],
      ),
    );
  }
}