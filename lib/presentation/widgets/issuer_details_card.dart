import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:assignment/domain/bond_detail/bond_detail_model.dart';

class IssuerDetailsCard extends StatelessWidget {
  final IssuerDetails issuer;

  const IssuerDetailsCard({super.key, required this.issuer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/person.png',
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 8),
              Text(
                'Issuer Details',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF101828),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
            color: Color(0xFFE5E7EB),
            thickness: 1,
            height: 1,
          ),
          const SizedBox(height: 16),
          _infoTile('Issuer Name', issuer.issuerName),
          _infoTile('Type of Issuer', issuer.typeOfIssuer),
          _infoTile('Sector', issuer.sector),
          _infoTile('Industry', issuer.industry),
          _infoTile('Issuer nature', issuer.issuerNature),
          _infoTile('Corporate Identity Number (CIN)', issuer.cin),
          _infoTile('Name of the Lead Manager', issuer.leadManager),
          _infoTile('Registrar', issuer.registrar),
          _infoTile('Name of Debenture Trustee', issuer.debentureTrustee),
        ],
      ),
    );
  }

  Widget _infoTile(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF2563EB),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF101828),
            ),
          ),
        ],
      ),
    );
  }
}
