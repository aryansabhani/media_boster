import 'package:flutter/material.dart';
import 'package:media_boster_aryan/Provider/Audio_Provider.dart';
import 'package:media_boster_aryan/screen/Video_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Media Boster"
        ),
        bottom: TabBar(tabs: [
          Text("Audio Player"),
          Text("Video Player"),
        ]),
      ),
      body: DefaultTabController(
        length: 2,
        child: TabBarView(
          children: <Widget>[
            Audio_Player(),
            Video_Player()
          ],
        ),
      ),
    );
  }
}
