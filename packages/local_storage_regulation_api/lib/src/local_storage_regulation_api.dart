import 'package:regulation_api/regulation_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageRegulationApi extends RegulationApi {
  final List<ChapterInfo> _tableOfContents;
  final String _regulationName;

  LocalStorageRegulationApi({
    required SharedPreferences plugin,
  })  : _tableOfContents = Regulation.chapters.map((chapter) {
          return ChapterInfo(chapter.name, chapter.num);
        }).toList(),
        _regulationName = Regulation.name,
        _plugin = plugin;

  List<ChapterInfo> getTableOfContents() {
    return _tableOfContents;
  }

  String getRegulationName() {
    return _regulationName;
  }

  final SharedPreferences _plugin;

  // Future<List<Paragraph>> getParagraphs() {}

  // Future<void> saveParagraph(Paragraph paragraph) {}

  // Future<void> deleteParagraph(String id) {}
}
