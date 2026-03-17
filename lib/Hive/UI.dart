import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'note_model.dart';

class NoteController extends GetxController {
  final Box<Note> noteBox = Hive.box<Note>('notes');

  // ১. Create (ডাটা যোগ করা)
  void addNote(String title, String desc) {
    final newNote = Note(title: title, description: desc);
    noteBox.add(newNote);
    update(); // UI রিফ্রেশ করার জন্য
  }

  // ২. Read (সব ডাটা লিস্ট আকারে পাওয়া)
  List<Note> get notes => noteBox.values.toList();

  // ৩. Update (ডাটা এডিট করা)
  void updateNote(int index, String title, String desc) {
    final note = noteBox.getAt(index);
    if (note != null) {
      note.title = title;
      note.description = desc;
      note.save(); // HiveObject এর বিল্ট-ইন মেথড
      update();
    }
  }

  // ৪. Delete (ডাটা মুছে ফেলা)
  void deleteNote(int index) {
    noteBox.deleteAt(index);
    update();
  }
}