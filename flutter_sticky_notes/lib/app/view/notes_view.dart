import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_notes/app/controller/notes_controller.dart';

class NotesView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotesViewState();
  }
}

class NotesViewState extends State<NotesView> {
  TextEditingController _textEditingController = new TextEditingController();
  NotesController _notesController = new NotesController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('To-Do List')),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                    height: 50,
                    width: 250,
                    child: TextField(
                        controller: _textEditingController,
                        decoration:
                            InputDecoration(border: OutlineInputBorder()))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                  height: 50,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _notesController.newTask(_textEditingController.text);
                      });
                    },
                    style:
                        ElevatedButton.styleFrom(primary: Colors.pink.shade900),
                    child: Icon(Icons.add),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _notesController.taskList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.stop_rounded,
                          color: Colors.pink.shade900,
                          size: 35,
                        ),
                        title: Text(
                          _notesController.getTask(index),
                        ),
                        subtitle: Text('18/05'),
                        trailing: Icon(
                          Icons.edit,
                          color: Colors.pink.shade900,
                        ),
                      )),
                    ],
                  );
                }),
          ),
          Divider(
            color: Colors.pink.shade900,
            height: 40,
            thickness: 5.0,
            endIndent: 90,
          )
        ]));
  }
}
