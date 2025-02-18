import 'package:ecommerce_marwan/features/home/domain/entities/category_entity.dart';
import 'package:ecommerce_marwan/features/home/domain/repo/category_repo_contract.dart';

class CategoryRepoImpl implements CategoryRepoContract{


  @override
  Future<List<CategoryEntity>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

}
