import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/bond_detail/bond_detail_model.dart';
import '../../domain/bond_detail/bond_detail_repository.dart';

part 'bond_detail_state.dart';
part 'bond_detail_cubit.freezed.dart';

@injectable
class BondDetailCubit extends Cubit<BondDetailState> {
  final IBondDetailRepository repository;

  BondDetailCubit(this.repository) : super(const BondDetailState.initial());

  Future<void> loadBondDetail(String isin) async {
    emit(const BondDetailState.loading());
    try {
      final bondDetail = await repository.getBondDetail(isin);
      emit(BondDetailState.loaded(bondDetail));
    } catch (e) {
      emit(BondDetailState.failure(e.toString()));
    }
  }
}

