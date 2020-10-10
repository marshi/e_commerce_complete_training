import 'package:e_commerce_complete_training/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultTextInputForm extends StatelessWidget {
  final SvgPicture _svgPicture;
  final String label;

  DefaultTextInputForm(this.label, [this._svgPicture]);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: kTextColor));
    return TextFormField(
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
                left: 0.0, top: 16.0, right: 30.0, bottom: 16.0),
            child: _svgPicture,
          ),
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: label,
          hintText: "",
          contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
    );
  }
}
