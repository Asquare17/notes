import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String noteId;
  bool get isEditing => noteId != null;
  NoteModify({this.noteId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Edit Note' : 'Create Note'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: ('NOte Title'),
            ),
          ),
          Container(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: ('NOte Content'),
            ),
          ),
          Container(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            height: 35,
            child: RaisedButton(
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
