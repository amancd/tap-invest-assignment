import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/bond_detail/bond_detail_model.dart';

class BondHeader extends StatelessWidget {
  final BondDetailModel bond;

  const BondHeader({super.key, required this.bond});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        _buildBackButton(context),
        const SizedBox(height: 30),
        _buildLogo(bond.logo),
        const SizedBox(height: 16),
        Text(
          bond.companyName,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 1.5,
            color: const Color(0xFF101828),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          bond.description,
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: const Color(0xFF6A7282),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            _tag('ISIN: ${bond.isin}', const Color(0x1F2563EB), const Color(0xFF2563EB)),
            const SizedBox(width: 8),
            _tag(bond.status, const Color(0x14059669), const Color(0xFF059669)),
          ],
        ),
      ],
    );
  }

  Widget _buildBackButton(BuildContext context) => Container(
    height: 36,
    width: 36,
    decoration: const BoxDecoration(
      color: Color(0xFFFFFFFF),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Color(0x0F525866),
          offset: Offset(0, 1),
          blurRadius: 2,
        ),
      ],
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () => Navigator.of(context).pop(),
        child: Center(
          child: Image.asset(
            'assets/back.png',
            height: 18,
            width: 18,
          ),
        ),
      ),
    ),
  );

  Widget _buildLogo(String logoUrl) => Container(
    height: 60,
    width: 60,
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x14000000),
          offset: Offset(0, 2),
          blurRadius: 6,
          spreadRadius: -1,
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        logoUrl,
        height: 48,
        width: 48,
        fit: BoxFit.cover,
      ),
    ),
  );

  Widget _tag(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
