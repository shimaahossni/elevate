// features/home/presentation/bloc/bloc/product_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task1/features/home/data/product/product.dart';
import 'package:task1/features/home/data/repo/product_repo.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<FetchProducts>(_fetchProducts);
  }

  Future<void> _fetchProducts(
      FetchProducts event, Emitter<ProductState> emit) async {
    emit(ProductLoading());
    try {
      final products = await ProductRepo.getProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
