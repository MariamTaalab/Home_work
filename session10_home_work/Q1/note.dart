/*1. Notes App – Organize Your Notes
  You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.- The app should allow listing all notes.
- The app should allow searching for a note by i */
class Note {
  String _title;
  String _content;
  DateTime _createdAt;
  Note(this._title, this._content) : _createdAt = DateTime.now();
  String get title => _title;
  String get content => _content;
  DateTime get createdAt => _createdAt;
}

class NotesApp {
  List<Note> _notes = [];
  void addNote(String title, String content) {
    _notes.add(Note(title, content));
  }

  void ListNotes() {
    if (_notes.isEmpty) {
      print('No notes available');
      return;
    }
    print("All Notes:");
    for (var note in _notes) {
      print('Title: ${note.title}');
      print('Content: ${note.content}');
      print('Created: ${note.createdAt.toLocal()}');
    }
  }

  void searchByTitle(String title) {
    var found = _notes.where(
      (note) => note.title.toLowerCase() == title.toLowerCase(),
    );
    if (found.isEmpty) {
      print("Note not found");
    } else {
      print('Search Result');
      for (var note in found) {
        print("Title: ${note.title}");
        print('Content: ${note.content}');
        print('Created: ${note.createdAt.toLocal()}');
      }
    }
  }
}
