import 'package:flutter/material.dart';

class MyTaskTile extends StatefulWidget {
  final String task;
  final String time;

  MyTaskTile({required this.task, required this.time});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<MyTaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: isChecked
                  ? Center(
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              )
                  : null,
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Text(
              widget.task,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Text(
            widget.time,
            style: TextStyle(fontSize: 16.0, color: isChecked?Colors.blue:Colors.grey),
          ),
        ],
      ),
    );
  }
}
