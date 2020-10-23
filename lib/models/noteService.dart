import 'package:notes/models/notes.dart';

class NoteService {
  List<Notes> getNotesList() {
    return [
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
  }
}
