import 'package:assignment/domain/bond_detail/bond_detail_model.dart';
import 'package:assignment/presentation/widgets/issuer_details_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinancialChart extends StatefulWidget {
  final Financials financials;
  final IssuerDetails issuerDetails;

  const FinancialChart({
    super.key,
    required this.financials,
    required this.issuerDetails,
  });

  @override
  State<FinancialChart> createState() => _FinancialChartState();
}

class _FinancialChartState extends State<FinancialChart> {
  bool showEbitda = true;

  late List<MonthValue> ebitda;
  late List<MonthValue> revenue;
  late int maxValue;

  @override
  void initState() {
    super.initState();
    ebitda = widget.financials.ebitda;
    revenue = widget.financials.revenue;

    maxValue = _calculateMaxValue([...ebitda, ...revenue]);
  }

  int _calculateMaxValue(List<MonthValue> allData) {
    final max = allData.map((e) => e.value).reduce((a, b) => a > b ? a : b);
    return ((max ~/ 1000000) + 1) * 1000000; // Round to next million
  }

  @override
  Widget build(BuildContext context) {
    final List<MonthValue> data = showEbitda ? ebitda : revenue;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header & Toggle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'COMPANY FINANCIALS',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF9CA3AF),
                      letterSpacing: 0.5,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        _toggleTab('EBITDA', showEbitda, () {
                          setState(() => showEbitda = true);
                        }),
                        _toggleTab('Revenue', !showEbitda, () {
                          setState(() => showEbitda = false);
                        }),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              AspectRatio(
                aspectRatio: 1.8,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: maxValue.toDouble(),
                    barTouchData: BarTouchData(enabled: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 28,
                          interval: 1,
                          getTitlesWidget: (value, _) {
                            final index = value.toInt();
                            if (index >= 0 && index < data.length) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  data[index].month,
                                  style: GoogleFonts.inter(
                                    fontSize: 8,
                                    color: const Color(0xFF9CA3AF),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 28,
                          interval: 10000000,
                          getTitlesWidget: (value, _) {
                            if (value % 10000000 != 0) return const SizedBox.shrink();
                            return Text(
                              '₹${(value / 10000000).toStringAsFixed(0)}L',
                              style: GoogleFonts.inter(fontSize: 8, color: const Color(0xFF9CA3AF)),
                            );
                          },
                        ),
                      ),
                      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    ),
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      horizontalInterval: 10000000,
                    ),
                    borderData: FlBorderData(show: false),
                    barGroups: List.generate(data.length, (index) {
                      final val = data[index].value;
                      return BarChartGroupData(
                        x: index,
                        barRods: [
                          showEbitda
                              ? BarChartRodData(
                            toY: val.toDouble(),
                            width: 14,
                            rodStackItems: [
                              BarChartRodStackItem(0, val * 0.5, const Color(0xFF101828)),
                              BarChartRodStackItem(val * 0.5, val.toDouble(), Colors.lightBlueAccent),
                            ],
                            borderRadius: BorderRadius.circular(4),
                          )
                              : BarChartRodData(
                            toY: val.toDouble(),
                            width: 14,
                            color: const Color(0xFF155DFC),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        IssuerDetailsCard(issuer: widget.issuerDetails),
      ],
    );
  }

  Widget _toggleTab(String label, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: GoogleFonts.inter(
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
            fontSize: 10,
            color: isActive ? const Color(0xFF101828) : const Color(0xFF9CA3AF),
          ),
        ),
      ),
    );
  }
}
