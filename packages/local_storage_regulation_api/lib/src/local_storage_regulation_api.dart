import 'package:regulation_api/regulation_api.dart';

class LocalStorageRegulationApi {
  final List<ChapterInfo> _tableOfContents;

  LocalStorageRegulationApi()
      : _tableOfContents = Regulation.chapters.map((chapter) {
          return ChapterInfo(chapter.name, chapter.num);
        }).toList();

  List<ChapterInfo> getTableOfContents() {
    return _tableOfContents;
  }

  // Future<List<Paragraph>> getParagraphs() {}

  // Future<void> saveParagraph(Paragraph paragraph) {}

  // Future<void> deleteParagraph(String id) {}
}
