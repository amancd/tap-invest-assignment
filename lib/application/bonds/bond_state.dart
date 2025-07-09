part of 'bond_cubit.dart';

@freezed
class BondState with _$BondState {
  const factory BondState.initial() = _Initial;
  const factory BondState.loading() = _Loading;
  const factory BondState.loaded(List<BondModel> bonds, String highlightQuery) = _Loaded;
  const factory BondState.failure(String error) = _Failure;
}
