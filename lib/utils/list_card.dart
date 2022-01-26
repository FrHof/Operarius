import 'package:flutter/material.dart';
import 'colors.dart';
import 'task.dart';

const double circularRadius = 10.0;
class ListCard extends StatefulWidget {
  final Task task;
  const ListCard(this.task);
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child : Container(
          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
          decoration: const BoxDecoration(
            color: ApplicationColors.color1,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(circularRadius),
                topRight: Radius.circular(circularRadius),
                bottomLeft: Radius.circular(circularRadius),
                bottomRight: Radius.circular(circularRadius)
            ),
          ),
        child: Row(
          children: [
            Text(widget.task.title),
            Text(widget.task.deadline.toString()),
            Text(widget.task.priority.toString()),
            Icon(categoryIcons[widget.task.category],
            color: colorsIcons[widget.task.category],
            ),
          ],
        ),
      )
    );
  }

}
