import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:assignment/domain/bond_detail/bond_detail_model.dart';

class ProsConsSection extends StatelessWidget {
  final ProsAndCons prosAndCons;

  const ProsConsSection({super.key, required this.prosAndCons});

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
          _sectionHeader("Pros and Cons"),
          const SizedBox(height: 12),
          _sectionTitle("Pros"),
          const SizedBox(height: 8),
          ...prosAndCons.pros.map((e) => _buildItem(e, true)),
          const SizedBox(height: 16),
          _sectionTitle("Cons"),
          const SizedBox(height: 8),
          ...prosAndCons.cons.map((e) => _buildItem(e, false)),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF101828),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: const Color(0xFFB45309),
      ),
    );
  }

  Widget _buildItem(String text, bool isPro) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            isPro ? 'assets/tick.png' : 'assets/cross.png',
            width: 18,
            height: 18,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 12,
                color: isPro ? const Color(0xFF364153) : const Color(0xFF64748B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
