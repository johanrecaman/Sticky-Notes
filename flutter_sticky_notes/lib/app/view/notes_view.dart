import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotesViewState();
  }
}

class NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('To-Do List')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                    height: 50,
                    width: 250,
                    child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                  height: 50,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(),
                    child: Text('test'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
