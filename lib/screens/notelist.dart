import 'package:flutter/material.dart';
import 'package:notes/models/notes.dart';
import 'package:notes/screens/noteDelete.dart';
import 'package:notes/screens/noteModify.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  final notes = [
    new Notes(
      notesId: '12',
      notesTitle: 'HEllo',
      createdDateTime: DateTime.now(),
      lastEditedDateTime: DateTime.now(),
    ),
    new Notes(
      notesId: '13',
      notesTitle: 'Hi',
      createdDateTime: DateTime.now(),
      lastEditedDateTime: DateTime.now(),
    ),
    new Notes(
      notesId: '14',
      notesTitle: 'Sleep',
      createdDateTime: DateTime.now(),
      lastEditedDateTime: DateTime.now(),
    ),
  ];
  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NoteModify()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 1,
          color: Colors.green,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: ValueKey(notes[index].notesId),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = showDialog(
                context: context,
                builder: (context) => NoteDelete(),
              );
              return result;
            },
            background: Container(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  )),
              color: Colors.red,
            ),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NoteModify(
                          noteId: notes[index].notesId,
                        )));
              },
              title: Text(
                notes[index].notesTitle,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text(
                  'Last edited on ${formatDateTime(notes[index].lastEditedDateTime)}'),
            ),
          );
        },
        itemCount: notes.length,
      ),
    );
  }
}
