// data/repositories/category/category_repo_impl.dart
import 'package:ecommerce_mvi/data/data_source_contracts/category_online_data_source.dart';
import 'package:ecommerce_mvi/domain/common/result.dart';
import 'package:ecommerce_mvi/domain/contracts/category_repo.dart';
import 'package:ecommerce_mvi/domain/model/category.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: CategoryRepo)
class  CategoryRepoImpl implements CategoryRepo {
 final CategoryOnlineDataSource _categoryOnlineDataSource;

  CategoryRepoImpl(this._categoryOnlineDataSource);

  @override
  Future <Result<List<Category>>> getCategories() => _categoryOnlineDataSource.getCategories();
}