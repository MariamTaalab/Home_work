/*1. Notes App – Organize Your Notes
  You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.- The app should allow listing all notes.
- The app should allow searching for a note by i */
import 'note.dart';

void main() {
  NotesApp app = NotesApp();
  app.addNote('shopping list', 'Milk, Bread, chease, egg');
  app.addNote('work out', 'study, work, sretching');
  app.ListNotes();
  app.searchByTitle('shopping list');
}
