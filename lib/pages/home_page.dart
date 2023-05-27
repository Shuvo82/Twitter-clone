import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:twitter_clone/data/data_sources/tweet_datasource.dart';
import 'package:twitter_clone/data/models/tweet_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: TweetDatasource.get_all_tweet(),
        builder: (BuildContext context, AsyncSnapshot sn) {
          if (sn.hasError) {
            return Center(
              child: Text("Error Loading Data  " "${sn.error}"),
            );
          }
          if (sn.hasData) {
            List<TweetModel> tweets = sn.data;
            //return Text("${sn.data}");
            return ListView.builder(
                itemCount: tweets.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://i.pravatar.cc/300"),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${tweets[index].writer}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${tweets[index].posted_at}",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text("${tweets[index].tweet}"),
                        trailing: Text("ID:" "${tweets[index].id}"),
                      ),
                    ),
                  );
                });
          }

          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
                color: Colors.deepOrange, size: 100),
          );
        });
  }
}
