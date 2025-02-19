import 'package:ecommerce_marwan/features/home/data/data_source/contract/datasource_contract.dart';
import 'package:ecommerce_marwan/features/home/domain/entities/category_entity.dart';
import 'package:ecommerce_marwan/features/home/domain/repo/category_repo_contract.dart';
import 'package:injectable/injectable.dart';


@Injectable(as : CategoryRepoContract)
class CategoryRepoImpl implements CategoryRepoContract{
  DatasourceContract datasource;
  CategoryRepoImpl(this.datasource);
  @override
  Future<List<CategoryEntity>> getCategories() {
   //depend on data source

    return datasource.getCategories();
  }

}
