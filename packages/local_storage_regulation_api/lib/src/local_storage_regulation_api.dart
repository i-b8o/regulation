import 'package:regulation_api/regulation_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageRegulationApi {
  final List<ChapterInfo> _tableOfContents;

  LocalStorageRegulationApi({
    required SharedPreferences plugin,
  })  : _tableOfContents = Regulation.chapters.map((chapter) {
          return ChapterInfo(chapter.name, chapter.num);
        }).toList(),
        _plugin = plugin;

  List<ChapterInfo> getTableOfContents() {
    return _tableOfContents;
  }

  final SharedPreferences _plugin;

  // Future<List<Paragraph>> getParagraphs() {}

  // Future<void> saveParagraph(Paragraph paragraph) {}

  // Future<void> deleteParagraph(String id) {}
}
