import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.erroMassage});
  final String erroMassage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        erroMassage,
        style: Styles.textStyle20,
        textAlign: TextAlign.center,
      ),
    );
  }
}
