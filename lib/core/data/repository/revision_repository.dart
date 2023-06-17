import 'package:ya_todo_app/core/data/api_client/api_client.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';

/// repository for getting actual revision number
class RevisionRepository {
  /// repository for getting actual revision number
  const RevisionRepository(
    this._apiClient,
  );

  final ApiClient _apiClient;

  /// get current revision number from server
  Future<int?> getRevisionNumber() async {
    final res = await _apiClient.client.get<dynamic>(
      'list',
    );
    final response = ListResponce.fromJson(
      res.data as Map<String, dynamic>,
    );
    return response.revision;
  }
}
