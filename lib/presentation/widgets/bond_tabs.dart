import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:assignment/domain/bond_detail/bond_detail_model.dart';
import 'package:assignment/presentation/widgets/financial_chart.dart';
import 'package:assignment/presentation/widgets/pros_and_cons.dart';

class BondTabs extends StatefulWidget {
  final BondDetailModel bond;


  const BondTabs({super.key, required this.bond});

  @override
  State<BondTabs> createState() => _BondTabsState();
}

class _BondTabsState extends State<BondTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color(0xFFF9FAFB),
          child: TabBar(
            tabAlignment: TabAlignment.start,
            controller: _tabController,
            isScrollable: true,
            labelPadding: const EdgeInsets.only(right: 24),
            labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 12),
            unselectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 12),
            labelColor: const Color(0xFF2563EB),
            unselectedLabelColor: const Color(0xFF6B7280),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: Color(0xFF2563EB), width: 2),
              insets: EdgeInsets.symmetric(horizontal: 1),
            ),
            tabs: const [
              Tab(text: 'ISIN Analysis'),
              Tab(text: 'Pros & Cons'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 850, // adjust as per your layout needs
          child: TabBarView(
            controller: _tabController,
            children: [
              FinancialChart(
                financials: widget.bond.financials,
                issuerDetails: widget.bond.issuerDetails,
              ),
              ProsConsSection(
                  prosAndCons: widget.bond.prosAndCons,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
