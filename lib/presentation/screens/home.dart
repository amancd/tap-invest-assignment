import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/bonds/bond_cubit.dart';
import '../../injection.dart';
import '../widgets/BondCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<BondCubit>()..loadBonds(),
      child: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.inter(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            height: 1.5, // 150%
            letterSpacing: -0.78, // -3%
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xFFF3F4F6),
        elevation: 0,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            // 🔍 Search Bar
            Container(
              height: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Icon(Icons.search, size: 16, color: Color(0xFF6A7282)),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      onChanged: (query) => context.read<BondCubit>().filterBonds(query),
                      style: GoogleFonts.inter(fontSize: 12, height: 1.5),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search by Issuer Name or ISIN',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 12,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF99A1AF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            BlocBuilder<BondCubit, BondState>(
              builder: (context, state) {
                final isSearch = state.maybeWhen(
                  loaded: (_, query) => query.trim().isNotEmpty,
                  orElse: () => false,
                );

                return Text(
                  isSearch ? 'SEARCH RESULTS' : 'SUGGESTED RESULTS',
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xFF99A1AF),
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                );
              },
            ),


            const SizedBox(height: 12),

            Expanded(
              child: BlocBuilder<BondCubit, BondState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (bonds, highlightQuery) => SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          children: List.generate(bonds.length, (index) {
                            final bond = bonds[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                bottom: index == bonds.length - 1 ? 0 : 12,
                              ),
                              child: BondCard(
                                bond: bond,
                                highlightQuery: highlightQuery,
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    failure: (error) => Center(
                      child: Text('Failed to load: $error'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


