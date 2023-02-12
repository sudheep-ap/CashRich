import 'package:cash_rich/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

//shimmer Effect

class ShimmerEffect extends StatelessWidget {
  final Widget child;
  const ShimmerEffect({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: kLightGreyColor,
        highlightColor: const Color.fromARGB(255, 216, 216, 216),
        period: const Duration(milliseconds: 1500),
        child: child);
  }
}

//SizedBox

const Widget kSizedBox10 = SizedBox(height: 10);
const Widget kSizedBox15 = SizedBox(height: 15);
const Widget kSizedBox20 = SizedBox(height: 20);
const Widget kSizedBox25 = SizedBox(height: 25);
const Widget kSizedBox30 = SizedBox(height: 30);
const Widget kSizedBox35 = SizedBox(height: 35);
const Widget kSizedBox40 = SizedBox(height: 40);
const Widget kSizedBox45 = SizedBox(height: 45);
const Widget kSizedBox50 = SizedBox(height: 50);
const Widget kSizedBox55 = SizedBox(height: 55);
const Widget kSizedBox60 = SizedBox(height: 60);
const Widget kSizedBox70 = SizedBox(height: 70);
const Widget kSizedBox80 = SizedBox(height: 80);
const Widget kSizedBox90 = SizedBox(height: 90);
const Widget kSizedBox100 = SizedBox(height: 100);
