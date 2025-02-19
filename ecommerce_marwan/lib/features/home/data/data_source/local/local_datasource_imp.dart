import 'package:ecommerce_marwan/features/home/data/data_source/contract/datasource_contract.dart';
import 'package:ecommerce_marwan/features/home/domain/entities/category_entity.dart';

class LocalDataSourceImp implements DatasourceContract{
  @override
  Future<List<CategoryEntity>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

}