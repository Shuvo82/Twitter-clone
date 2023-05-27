import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter clone App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Twitter clone '),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Tweet",
                          ),
                        ),
                        ElevatedButton(onPressed: () {}, child: Text("Tweet"))
                      ],
                    ),
                  ),
                );
              },
              icon: Icon(
                Icons.add_circle_outline,
              ),
            )
          ],
        ),
        body: HomePage(),
      ),
    );
  }
}
