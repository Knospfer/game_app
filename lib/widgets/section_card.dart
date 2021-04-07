import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatefulWidget {
  final String title;
  final bool initialSelected;
  final Color colors;

  const SectionCard({
    Key key,
    @required this.title,
    this.initialSelected = false,
    @required this.colors,
  }) : super(key: key);

  @override
  _SectionCardState createState() => _SectionCardState();
}

class _SectionCardState extends State<SectionCard> {
  bool selected;

  @override
  void initState() {
    selected = widget.initialSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: selected ? widget.colors : Colors.grey.shade400,
        ),
        height: 20.0,
        width: 125.0,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
