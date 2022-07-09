import 'models.dart';

class Chapter {
  final int id;
  final String name;
  final String num;
  final List<Paragraph> paragraphs;

  const Chapter(
      {required this.id,
      required this.name,
      required this.num,
      required this.paragraphs});
}
