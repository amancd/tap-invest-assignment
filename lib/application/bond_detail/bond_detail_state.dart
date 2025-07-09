part of 'bond_detail_cubit.dart';

@freezed
class BondDetailState with _$BondDetailState {
  const factory BondDetailState.initial() = _Initial;
  const factory BondDetailState.loading() = _Loading;
  const factory BondDetailState.loaded(BondDetailModel detail) = _Loaded;
  const factory BondDetailState.failure(String error) = _Failure;
}
