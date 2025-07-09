import 'bond_model.dart';

abstract class IBondRepository {
  Future<List<BondModel>> getBonds();
}