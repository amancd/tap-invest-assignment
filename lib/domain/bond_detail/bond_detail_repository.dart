import 'bond_detail_model.dart';

abstract class IBondDetailRepository {
  Future<BondDetailModel> getBondDetail(String isin);
}

