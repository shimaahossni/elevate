import 'package:ecommerce_marwan/features/home/domain/entities/category_entity.dart';

abstract class DatasourceContract {
  Future<List<CategoryEntity>> getCategories();
}
