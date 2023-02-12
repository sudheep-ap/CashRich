import 'package:cash_rich/infrastructure/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final homePageDataProvider = StreamProvider.autoDispose(
//   (ref) => Stream.periodic(const Duration(minutes: 30), (_) async {
//     return getHomePageData() as Map<String, dynamic>;
//   }),
// );

final homePageDataProvider = StreamProvider<Map<String, dynamic>>((ref) {
  final data = getHomePageData();
  return data;
});
