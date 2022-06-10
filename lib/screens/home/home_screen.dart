// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/screens/home/components/categories.dart';
import 'package:stylish/screens/home/components/new_arrival.dart';
import 'package:stylish/screens/home/components/popular.dart';
import 'package:stylish/screens/home/components/search_form.dart';
import 'package:stylish/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/Location.svg'),
            SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '15/2 New Texas',
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/Notification.svg'),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              'best Outfits for you',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            Categories(),
            SizedBox(
              height: defaultPadding,
            ),
            NewArrival(),
            SizedBox(
              height: defaultPadding,
            ),
            Popular()
          ],
        ),
      ),
    );
  }
}
