// domain/contracts/brands_repo.dart
import 'package:ecommerce_mvi/domain/common/result.dart';
import 'package:ecommerce_mvi/domain/model/Brand.dart';

abstract class BrandsRepo {
  Future<Result<List<Brand>>> getBrands();
}