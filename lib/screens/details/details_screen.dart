// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: product.bgColor,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/Heart.svg',
                    height: 20,
                  )))
        ],
      ),
      body: Container(
        color: product.bgColor,
        child: Column(children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2,
                defaultPadding, defaultPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                )),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text(
                      '\$${product.price}',
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                      'A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.'),
                ),
                Text(
                  'Colors',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                ColorDot()
              ],
            ),
          ))
        ]),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding / 4),
      decoration: BoxDecoration(
          border: Border.all(color: primaryColor), shape: BoxShape.circle),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: Color(0xFFBEE8EA),
      ),
    );
  }
}
