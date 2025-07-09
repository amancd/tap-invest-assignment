import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/bond_detail/bond_detail_model.dart';
import '../../domain/bond_detail/bond_detail_repository.dart';

@LazySingleton(as: IBondDetailRepository)
class BondDetailRepositoryImpl implements IBondDetailRepository {
  final Dio dio;

  BondDetailRepositoryImpl(this.dio);

  @override
  Future<BondDetailModel> getBondDetail(String isin) async {
    // Assuming you’ll append `isin` in a real API. For now it's unused but needed for the method signature.
    final response = await dio.get('https://eo61q3zd4heiwke.m.pipedream.net/');
    return BondDetailModel.fromJson(response.data);
  }
}

