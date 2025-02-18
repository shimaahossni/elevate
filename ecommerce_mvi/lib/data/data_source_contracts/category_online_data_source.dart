// data/data_source_contracts/category_online_data_source.dart
import 'package:ecommerce_mvi/domain/common/result.dart';
import 'package:ecommerce_mvi/domain/model/category.dart';

abstract class CategoryOnlineDataSource {
  Future <Result<List<Category>>> getCategories();
}