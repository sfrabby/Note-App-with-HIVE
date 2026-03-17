import 'package:hive/hive.dart';

part 'note_model.g.dart'; // এটি রান করার জন্য টার্মিনালে কমান্ড দিতে হবে

@HiveType(typeId: 0)
class Note extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  Note({required this.title, required this.description});
}
