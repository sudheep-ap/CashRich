import 'package:cash_rich/data/common_widgets.dart';
import 'package:cash_rich/data/constants.dart';
import 'package:cash_rich/infrastructure/providers.dart';
import 'package:cash_rich/presentation/home/widgets/home_page_data_card.dart';
import 'package:cash_rich/presentation/home/widgets/home_page_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kHomepageBackgroundColor,
        appBar: AppBar(
            title: Text(
              'CoinRich',
              style: TextStyle(
                  color: kTextWhiteColor, fontFamily: kPBold, fontSize: 21),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.black),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Consumer(builder: (context, ref, child) {
                final homePageData = ref.watch(homePageDataProvider);
                return homePageData.when(
                    loading: () =>
                        const ShimmerEffect(child: HomePageSkeleton()),
                    error: (error, stackTrace) => Center(
                        child: Text('error: $error',
                            style: TextStyle(
                                color: kTextWhiteColor,
                                fontFamily: kPBold,
                                fontSize: 13))),
                    data: (homepagedata) {
                      //pass the corresponding data keys from api result
                      var cName = homepagedata[''];
                      var cPrice = homepagedata[''];
                      var cPercentage = homepagedata[''];
                      var cRank = homepagedata[''];
                      var cCode = homepagedata[''];

                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onDoubleTap: () {
                                  //
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.av_timer_outlined,
                                      color: kIconYellowColor,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'show chart',
                                      style: TextStyle(
                                          color: kTextYellowColor,
                                          fontFamily: kPBold,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Count: ',
                                    style: TextStyle(
                                        color: kTextWhiteColor,
                                        fontFamily: kPBold,
                                        fontSize: 13),
                                  ),
                                  Text('5', //replace with item length
                                      style: TextStyle(
                                          color: kTextWhiteColor,
                                          fontFamily: kPBold,
                                          fontSize: 13))
                                ],
                              )
                            ],
                          ),
                          kSizedBox30,
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 15,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => HomePageItemCard(
                              cyptoName: cName.toString(),
                              code: cCode.toString(),
                              price: cPrice.toString(),
                              percentage: cPercentage.toString(),
                              rank: cRank.toString(),
                            ),
                            separatorBuilder: (context, index) => kSizedBox20,
                          ),
                        ],
                      );
                    });
              }),
            ),
          ),
        ));
  }
}
