//usecase is action of the app like login ... what the user do in the app
//domain is the business logic of the app
//categoryEntity UI representation(title,image,id etc).. what is the data
//that we need to get from the server i dont need fromjson or tojson method


//catehoryModel is the data that we get from the server and have fromjson and tojson method
//so that we can use it in the UI persentation layer


import 'package:ecommerce_marwan/features/home/domain/entities/category_entity.dart';
import 'package:ecommerce_marwan/features/home/domain/repo/category_repo_contract.dart';
import 'package:injectable/injectable.dart';


@injectable
class GetCategoryUseCase {
  CategoryRepoContract categoryRepo;
  GetCategoryUseCase(this.categoryRepo);


  Future<List<CategoryEntity>> call() => categoryRepo.getCategories();
}

