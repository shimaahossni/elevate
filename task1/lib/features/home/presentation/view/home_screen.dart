// features/home/presentation/view/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/utils/colors.dart';
import 'package:task1/core/utils/text_style.dart';
import 'package:task1/features/home/presentation/bloc/bloc/product_bloc.dart';
import 'package:task1/features/home/presentation/widget/product_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => ProductBloc()..add(FetchProducts()),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Products",
              style: getTitleStyle(fontSize: mediaquery.height * 0.04)),
          backgroundColor: AppColors.redColor,
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.redColor,
              ));
            } else if (state is ProductError) {
              return Center(child: Text(state.message));
            } else if (state is ProductLoaded) {
              return GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: state.products[index]);
                },
              );
            }
            return const Center(child: Text('No products available'));
          },
        ),
      ),
    );
  }
}
