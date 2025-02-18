import 'package:ecommerce_marwan/features/home/domain/entities/category_entity.dart';

abstract class CategoryRepoContract {
  Future<List<CategoryEntity>> getCategories();
}