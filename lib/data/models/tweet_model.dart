class TweetModel {
  int? id;
  String? writer;
  String? tweet;
  String? posted_at;

  TweetModel({this.id, this.writer, this.tweet, this.posted_at});

  TweetModel.fromJson(Map json) {
    id = int.parse(json["id"]);
    writer = json["author"];
    tweet = json["body"];
    posted_at = json["posted_at"];
  }

  Map<String, String> toJson() {
    //first string is key and second string is value
    Map<String, String> data = {};
    data["author"] = writer ?? "Anonymous";
    data["body"] = tweet ?? "blank tweet";

    return data;
  }
}
