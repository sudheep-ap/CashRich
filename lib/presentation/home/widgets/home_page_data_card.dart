// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cash_rich/data/common_widgets.dart';
import 'package:cash_rich/data/constants.dart';
import 'package:flutter/material.dart';

// Tile in homepage
class HomePageItemCard extends StatelessWidget {
  final cyptoName;
  final price;
  final percentage;
  final rank;
  final code;

  const HomePageItemCard(
      {super.key,
      required this.cyptoName,
      required this.price,
      required this.percentage,
      required this.rank,
      required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kMainBlackColor, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(10),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(cyptoName.toString(),
                        style: TextStyle(
                            color: kTextYellowColor,
                            fontFamily: kPBold,
                            fontSize: 18)),
                    const SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: [
                        //condition

                        // Icon(
                        //   Icons.arrow_upward_rounded, //condtion arrow_downward_rounded arrow_upward_rounded
                        //   size: 10,
                        //   color: kGreenColor,
                        // ),

                        Icon(
                          Icons.arrow_downward_rounded,
                          size: 10,
                          color: kRedColor,
                        ),
                        Text(percentage.toString(),
                            style: TextStyle(
                                color: kTextWhiteColor,
                                fontFamily: kPLight,
                                fontSize: 15)),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('price',
                        style: TextStyle(
                            color: kTextWhiteColor,
                            // fontFamily: kPLight,
                            fontSize: 15)),
                    const SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Text(kDollarSymbol,
                            style: TextStyle(
                                color: kTextWhiteColor,
                                fontFamily: kPNormal,
                                fontSize: 15)),
                        Text(price.toString(),
                            style: TextStyle(
                                color: kTextWhiteColor,
                                fontFamily: kPNormal,
                                fontSize: 15)),
                      ],
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: [
                        Text('Rank',
                            style: TextStyle(
                                color: kTextWhiteColor,
                                fontFamily: kPNormal,
                                fontSize: 15)),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(rank.toString(),
                            style: TextStyle(
                                color: kTextWhiteColor,
                                fontFamily: kPNormal,
                                fontSize: 15)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(code.toString(),
                      style: TextStyle(
                          color: kTextWhiteColor,
                          fontFamily: kPNormal,
                          fontSize: 15)),
                  kSizedBox10,
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: kLightGreyColor,
                      child: Icon(
                        size: 15,
                        Icons.arrow_forward,
                        color: kIconBlackColor,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Column(
//           children: [
//             Text(cyptoName.toString(),
//                 style: TextStyle(
//                     color: kTextYellowColor,
//                     fontFamily: kPBold,
//                     fontSize: 13)),
//             Text('h',
//                 style: TextStyle(
//                     color: kTextYellowColor,
//                     fontFamily: kPBold,
//                     fontSize: 13))
//           ],
//         ),
//         Column(
//           children: [
//             //
//             //
//             Row(
//               children: [
//                 //icon
//                 Text('h',
//                     style: TextStyle(
//                         color: kTextYellowColor,
//                         fontFamily: kPBold,
//                         fontSize: 13)),
//               ],
//             ),
//             Text('h',
//                 style: TextStyle(
//                     color: kTextYellowColor,
//                     fontFamily: kPBold,
//                     fontSize: 13))
//           ],
//         ),
