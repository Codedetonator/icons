import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons/custom_icons_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custon icons"),
        ),
        body: ListView(
          children: [
            //inbuild icons
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  //  Icon(IconData? icon,
                  // {Key? key, double? size,
                  // Color? color, String?
                  // semanticLabel, TextDirection?
                  // textDirection,
                  //List<Shadow>? shadows})
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                ],
              ),
            ),
            //package icons
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.gamepad, color: Colors.cyan),
                  FaIcon(FontAwesomeIcons.accessibleIcon, color: Colors.cyan),
                  FaIcon(FontAwesomeIcons.accusoft, color: Colors.cyan),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(CustomIcons.group_work, color: Colors.deepPurpleAccent),
                  Icon(CustomIcons.live_tv, color: Colors.deepPurpleAccent),
                  Icon(CustomIcons.movie_filter,
                      color: Colors.deepPurpleAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
