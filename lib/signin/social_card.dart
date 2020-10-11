import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  final SvgPicture _svgPicture;

  SocialCard(this._svgPicture);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF5F609),
        shape: BoxShape.circle,
      ),
      child: _svgPicture,
    );
  }
}
