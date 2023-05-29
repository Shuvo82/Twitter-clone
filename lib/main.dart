import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<AnimatedFloatingActionButtonState> key =
      GlobalKey<AnimatedFloatingActionButtonState>();

  Widget add() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
            ),
          );
        },
        heroTag: "Image",
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget image() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Image",
        tooltip: 'Image',
        child: Icon(Icons.image),
      ),
    );
  }

  Widget inbox() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Inbox",
        tooltip: 'Inbox',
        child: Icon(Icons.inbox),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter clone App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Twitter clone '),
          centerTitle: true,
        ),
        body: HomePage(),
        // floatingActionButton: AnimatedFloatingActionButton(
        //   key: key,
        //   fabButtons: <Widget>[
        //     add(),
        //     image(),
        //     inbox(),
        //   ],
        //   colorStartAnimation: Colors.blue,
        //   colorEndAnimation: Colors.red,
        //   animatedIconData: AnimatedIcons.menu_close,
        // ),
      ),
    );
  }
}
