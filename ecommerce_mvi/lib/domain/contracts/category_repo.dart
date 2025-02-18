// domain/contracts/category_repo.dart
import 'package:ecommerce_mvi/domain/common/result.dart';
import 'package:ecommerce_mvi/domain/model/category.dart';

abstract  class CategoryRepo {
  Future<Result<List<Category>>> getCategories();
}