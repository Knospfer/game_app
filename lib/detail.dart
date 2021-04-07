import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/ipsum.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0.0,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20.0),
        child: CupertinoButton(
          minSize: 60.0,
          pressedOpacity: 0.94,
          borderRadius: BorderRadius.all(
            Radius.circular(
              30.0,
            ),
          ),
          color: Colors.green,
          child: Text(
            "Start!",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: FadeInImage.assetNetwork(
              fadeInDuration: Duration(milliseconds: 200),
              placeholder: 'assets/placeholder.png',
              image: 'https://picsum.photos/seed/picsum/600/600',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox.expand(
              child: DraggableScrollableSheet(
            initialChildSize: 0.55,
            minChildSize: 0.55,
            builder: (context, scrollController) {
              return NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification overscroll) {
                  overscroll.disallowGlow();
                  return;
                },
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 24.0),
                    clipBehavior: Clip.hardEdge,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height / 1.8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Game Title",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 4.0)),
                        Text(
                          "This is the game subtitle",
                          style: TextStyle(
                              color: Colors.grey[600], fontSize: 18.0),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 20.0)),
                        Text(
                          LOREM_IPSUM,
                          style: TextStyle(color: Colors.grey, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
