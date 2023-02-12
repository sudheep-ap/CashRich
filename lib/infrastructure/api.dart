import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';

Stream<Map<String, dynamic>> getHomePageData() async* {
  String url =
      'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=BTC,ETH,LTC';
  Map<String, String> header = {
    // 'Authorization': '27ab17d1-215f-49e5-9ca4-afd48810c149',
    'CMC_PRO_API_KEY': '27ab17d1-215f-49e5-9ca4-afd48810c149'
  };
  final response = await http.get(Uri.parse(url), headers: header);
  if (response.statusCode == 200) {
    log(response.body);

    yield jsonDecode(response.body) as Map<String, dynamic>;
  } else {
    throw Exception('Failed to load data:${response.statusCode}');
  }
}


//https://github.com/sudheep-ap/cash_rich.git