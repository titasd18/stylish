// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stylish/screens/details/details_screen.dart';
import 'package:stylish/screens/home/components/product_card.dart';
import 'package:stylish/screens/home/components/section_title.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'New Arrivals',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  product: demo_product[index],
                                )));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
