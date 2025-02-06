// features/home/presentation/view/product_details.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task1/core/utils/colors.dart';
import 'package:task1/core/utils/text_style.dart';
import 'package:task1/features/home/data/product/product.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.redColor,
      appBar: AppBar(
          backgroundColor: AppColors.redColor,
          centerTitle: true,
          title: Text(product.title,
              style: getTitleStyle(
                  fontSize: mediaquery.height * 0.03,
                  color: AppColors.whiteColor))),
      body: Column(
        children: [
          Container(
            height: mediaquery.height * .5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0)),
            ),
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  product.image,
                  fit: BoxFit.contain,
                  width: double.infinity,
                )),
              ],
            ),
          ),
          Gap(mediaquery.height * 0.02),
          Padding(
            padding: EdgeInsets.all(mediaquery.height * 0.02),
            child: Text(
              product.description,
              style: getTitleStyle(
                fontSize: mediaquery.height * 0.02,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
