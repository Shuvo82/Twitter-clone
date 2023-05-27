class TweetModel {
  int? id;
  String? writer;
  String? tweet;
  String? posted_at;

  TweetModel.fromJson(Map json) {
    id = int.parse(json["id"]);
    writer = json["author"];
    tweet = json["body"];
    posted_at = json["posted_at"];
  }
}
