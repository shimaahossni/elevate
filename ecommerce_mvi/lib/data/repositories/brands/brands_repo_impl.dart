// data/repositories/brands/brands_repo_impl.dart
import 'package:ecommerce_mvi/data/data_source_contracts/brands_online_data_source.dart';
import 'package:ecommerce_mvi/domain/common/result.dart';
import 'package:ecommerce_mvi/domain/contracts/brands_repo.dart';
import 'package:ecommerce_mvi/domain/model/Brand.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BrandsRepo)
class BrandsRepoImpl implements BrandsRepo {

 final BrandsOnlineDataSource _brandsOnlineDataSource;

  BrandsRepoImpl(this._brandsOnlineDataSource);

  @override
  Future <Result<List<Brand>>> getBrands() => _brandsOnlineDataSource.getBrands();
}