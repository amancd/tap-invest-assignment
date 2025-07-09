import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/bond_detail/bond_detail_cubit.dart';
import '../widgets/bond_tabs.dart';
import '../widgets/bond_header.dart';

class BondDetailScreen extends StatelessWidget {
  const BondDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: BlocBuilder<BondDetailCubit, BondDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text("Loading...")),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (bond) => SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    BondHeader(bond: bond),
                    const SizedBox(height: 24),
                    BondTabs(bond: bond),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              failure: (message) => Center(child: Text("Error: $message")),
            );
          },
        ),
      ),
    );
  }
}
