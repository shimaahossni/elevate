// data/data_source_contracts/brands_online_data_source.dart
import 'package:ecommerce_mvi/domain/common/result.dart';
import 'package:ecommerce_mvi/domain/model/Brand.dart';

abstract class BrandsOnlineDataSource {
  Future<Result <List<Brand>>> getBrands();
}
