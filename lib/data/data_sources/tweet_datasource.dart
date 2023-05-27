import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:twitter_clone/data/models/tweet_model.dart';

class TweetDatasource {
  static Future<List<TweetModel>> get_all_tweet() async {
    List<TweetModel> tweetsList = [];

    http.Response res = await http.get(
      Uri.parse("https://6465a133228bd07b354eb182.mockapi.io/tweet"),
    );

    if (res.statusCode == 200) {
      List parsedjson = jsonDecode(res.body);
      parsedjson.forEach((element) {
        TweetModel tweetModel = TweetModel.fromJson(element);
        tweetsList.add(tweetModel);
      });
    }
    return tweetsList;
  }
}
