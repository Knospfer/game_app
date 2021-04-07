import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/detail.dart';

class GameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _openDetail(context);
      },
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 1.0,
                spreadRadius: 2.0,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FadeInImage.assetNetwork(
                  fadeInDuration: Duration(milliseconds: 200),
                  placeholder: 'assets/placeholder.png',
                  image: 'https://picsum.photos/seed/picsum/600/600',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Titolo Gioco",
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 4.0)),
                    Text(
                      "Sottotiolo",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _openDetail(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen();
    }));
  }
}
