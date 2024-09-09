import 'package:oho_hero/config/routes/export.dart';

class ProjectTypeDroupdown {
  final Ref ref;
  final String _read = 'MasterDataAll/Get_master_project_type';
  ProjectTypeDroupdown({required this.ref});

  Future<List<ProjectTypeDropdownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_read, body);
    } catch (e) {
      throw e;
    }
  }

  Future<List<ProjectTypeDropdownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _request(endpoint, body);
    return List<ProjectTypeDropdownModel>.from(
        List<dynamic>.from(res.data).map((item) => ProjectTypeDropdownModel.fromJson(item)));
  }

  Future<Response<dynamic>> _request(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(endpoint, data: body);
    } on DioException catch (e) {
      throw e;
    }
  }
}

final projectTypeDropdown = Provider<ProjectTypeDroupdown>((ref) => ProjectTypeDroupdown(ref: ref));
