import 'package:flutter/material.dart';
import 'package:freshmart/theme.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String iconUrl;

  const CategoryItem({
    Key? key,
    required this.name,
    required this.iconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext contest) {
    return Column(
      children: <Widget>[
        Image.asset(
          iconUrl,
          width: 40,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          name,
          style: greyTextStyle.copyWith(
            fontSize: 11,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }
}
