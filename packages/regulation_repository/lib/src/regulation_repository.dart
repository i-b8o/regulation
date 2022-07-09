import 'package:regulation_api/regulation_api.dart';

class RegulationRepository {
  const RegulationRepository({
    required RegulationApi regulationApi,
  }) : _regulationApi = regulationApi;

  final RegulationApi _regulationApi;

  List<ChapterInfo> getTableOfContents() => _regulationApi.getTableOfContents();
}
