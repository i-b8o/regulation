import 'models/models.dart';

abstract class RegulationApi {
  const RegulationApi();

  List<ChapterInfo> getTableOfContents();
  String getRegulationAbbreviation() {
    return Regulation.abbreviation;
  }

  // Future<List<Paragraph>> getParagraphs();

  // Future<void> saveParagraph(Paragraph paragraph);

  // Future<void> deleteParagraph(String id);
}
