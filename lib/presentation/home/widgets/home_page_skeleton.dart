//skeleton
import 'package:cash_rich/data/common_widgets.dart';
import 'package:cash_rich/data/constants.dart';
import 'package:flutter/material.dart';

class HomePageSkeleton extends StatelessWidget {
  const HomePageSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 25,
      itemBuilder: (context, index) {
        return const HomePageCardSkeleton();
      },
      separatorBuilder: (context, index) => kSizedBox40,
    );
  }
}

//card skeleton
class HomePageCardSkeleton extends StatelessWidget {
  const HomePageCardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(color: kLightGreyColor, width: 150, height: 15),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Container(color: kLightGreyColor, width: 50, height: 5),
                    ],
                  )
                ],
              ),
              kSizedBox15,
              Row(
                children: [
                  Container(color: kLightGreyColor, width: 50, height: 5),
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Container(color: kLightGreyColor, width: 45, height: 5),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Row(
                    children: [
                      Container(color: kLightGreyColor, width: 50, height: 5),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(color: kLightGreyColor, width: 30, height: 5),
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
                Container(
                  decoration: BoxDecoration(
                      color: kMainGreyColor,
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 24),
                  child:
                      Container(color: kLightGreyColor, width: 15, height: 10),
                ),
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
          ),
          Divider(
            color: kLightGreyColor,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
