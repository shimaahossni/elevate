// features/home/presentation/widget/product_card_widget.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task1/core/functions/navigation.dart';
import 'package:task1/core/utils/colors.dart';
import 'package:task1/core/utils/text_style.dart';
import 'package:task1/features/home/data/product/product.dart';
import 'package:task1/features/home/presentation/view/product_details.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  get random => null;

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => push(
          context,
          ProductDetails(
            product: product,
          )),
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: AppColors.redColor,
            borderRadius: BorderRadius.circular(mediaquery.height * 0.02),
            border: Border.all(color: AppColors.redColor),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(mediaquery.height * 0.02)),
                ),
                child: Stack(
                  children: [
                    Image.network(
                      product.image,
                      width: double.infinity,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: mediaquery.height * 0.005,
                      right: mediaquery.height * 0.005,
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(mediaquery.height * 0.02),
                            bottomLeft:
                                Radius.circular(mediaquery.height * 0.02),
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.favorite_border, color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mediaquery.height * 0.02,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.description,
                    style: getBodyStyle(color: AppColors.whiteColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gap(mediaquery.height * 0.01),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(product.rating.rate.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
