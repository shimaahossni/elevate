import 'package:ecommerce_marwan/core/api_manager/api_manager.dart';
import 'package:ecommerce_marwan/features/home/data/data_source/contract/datasource_contract.dart';
import 'package:ecommerce_marwan/features/home/domain/entities/category_entity.dart';
import 'package:injectable/injectable.dart';


@Singleton(as: DatasourceContract)
class RemoteDataSourceImpl implements DatasourceContract{
  ApiManager apiManager ;

  RemoteDataSourceImpl({required this.apiManager});


  @override
  Future<List<CategoryEntity>> getCategories() {
   //call Api

    throw UnimplementedError();
  }

}