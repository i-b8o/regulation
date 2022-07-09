import 'package:regulation_api/src/models/chapter_info.dart';

import 'models/models.dart';

abstract class RegulationApi {
  const RegulationApi();

  List<ChapterInfo> getTableOfContents();

  Future<List<Paragraph>> getParagraphs();

  Future<void> saveParagraph(Paragraph paragraph);

  Future<void> deleteParagraph(String id);
}
