import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_notes/app/controller/notes_controller.dart';
import 'package:flutter_sticky_notes/app/model/taskCard.dart';
import 'package:flutter_sticky_notes/boxes.dart';

class NotesView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotesViewState();
  }
}

class NotesViewState extends State<NotesView> {
  TextEditingController _titleController = new TextEditingController();
  TextEditingController _dateController = new TextEditingController();
  Boxes _notesController = new Boxes();

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
                    width: 160,
                    child: TextField(
                        controller: _titleController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Title'))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                  height: 50,
                  width: 100,
                  child: TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Date'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Container(
                  height: 50,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _notesController.newTask(
                            _titleController.text, _dateController.text);
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
                itemCount: Boxes.getTasks().length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                          child: ListTile(
                        leading: Checkbox(
                          activeColor: Colors.pink.shade900,
                          value: Boxes.getTasks(),
                          onChanged: (bool? value) {
                            setState(() {
                              _notesController.getTasks(index).isCompleted =
                                  value!;
                            });
                          },
                        ),
                        title: Text(
                          _notesController.getTasks(index).title,
                        ),
                        subtitle: Text(_notesController.getTasks(index).date),
                        trailing: Icon(
                          Icons.delete,
                          color: Colors.pink.shade900,
                        ),
                      )),
                    ],
                  );
                }),
          ),
        ]));
  }
}
