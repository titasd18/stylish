// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
      decoration: InputDecoration(
          hintText: 'Search items...',
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.0),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: SizedBox(
              height: 48,
              width: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(defaultBorderRadius)))),
                child: SvgPicture.asset('assets/icons/Filter.svg'),
              ),
            ),
          )),
    ));
  }
}

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(defaultBorderRadius));
