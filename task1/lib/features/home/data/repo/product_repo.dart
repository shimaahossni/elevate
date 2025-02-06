// features/home/data/repo/product_repo.dart
import 'package:task1/core/constants/endpoints.dart';
import 'package:task1/core/services/dio_provider.dart';
import 'package:task1/features/home/data/product/product.dart';

class ProductRepo {
  static Future<List<Product>> getProducts() async {
    try {
      var response = await DioProvider.get(endPoint: AppEndpoints.baseUrl);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error fetching products: $e');
    }
  }
}
