import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_app/widgets/game_card.dart';
import 'package:game_app/widgets/home_title.dart';
import 'package:game_app/widgets/section_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(),
        elevation: 0.0,
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: HomeTitle(),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              height: 100.0,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: _sectionList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height / 2.2,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: _gameList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _sectionList() {
    return [
      Padding(padding: EdgeInsets.only(left: 24.0)),
      SectionCard(
        title: "New",
        colors: Colors.green,
        initialSelected: true,
      ),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      SectionCard(
        title: "Played",
        colors: Colors.yellow,
      ),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      SectionCard(
        title: "Oh hold",
        colors: Colors.orange,
      ),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      SectionCard(
        title: "Bad",
        colors: Colors.red,
      ),
      Padding(padding: EdgeInsets.only(left: 24.0)),
    ];
  }

  List<Widget> _gameList() {
    return [
      Padding(padding: EdgeInsets.only(left: 19.0)),
      GameCard(),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      GameCard(),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      GameCard(),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      GameCard(),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      GameCard(),
      Padding(padding: EdgeInsets.only(left: 10.0)),
      GameCard(),
      Padding(padding: EdgeInsets.only(left: 19.0)),
    ];
  }
}
