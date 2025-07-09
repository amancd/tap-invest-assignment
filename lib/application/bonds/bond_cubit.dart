import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/bond/bond_model.dart';
import '../../domain/bond/bond_repository.dart';

part 'bond_state.dart';
part 'bond_cubit.freezed.dart';

// bond_cubit.dart
@injectable
class BondCubit extends Cubit<BondState> {
  final IBondRepository repository;
  late List<BondModel> _allBonds;

  BondCubit(this.repository) : super(const BondState.initial());

  Future<void> loadBonds() async {
    emit(const BondState.loading());
    try {
      final bonds = await repository.getBonds();
      _allBonds = bonds;
      emit(BondState.loaded(bonds, ''));
    } catch (e) {
      emit(BondState.failure(e.toString()));
    }
  }

  void filterBonds(String query) {
    final trimmedQuery = query.trim();
    if (trimmedQuery.isEmpty) {
      emit(BondState.loaded(_allBonds, ''));
      return;
    }

    final words = trimmedQuery.toLowerCase().split(RegExp(r'\s+'));
    final filtered = _allBonds.where((bond) {
      final combined = '${bond.isin} ${bond.companyName} ${bond.rating} ${bond.tags.join(" ")}'.toLowerCase();
      return words.any((word) => combined.contains(word));
    }).toList();

    emit(BondState.loaded(filtered, trimmedQuery));
  }

}
