import 'package:oho_hero/config/routes/export.dart';

class ScopeCategoryDroupdown {
  final Ref ref;
  final String _read = 'MasterData/Get_master_scope_category';
  ScopeCategoryDroupdown({required this.ref});

  Future<List<ScopeCategoryDropdownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_read, body);
    } catch (e) {
      throw e;
    }
  }

  Future<List<ScopeCategoryDropdownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _request(endpoint, body);
    return List<ScopeCategoryDropdownModel>.from(
        List<dynamic>.from(res.data).map((item) => ScopeCategoryDropdownModel.fromJson(item)));
  }

  Future<Response<dynamic>> _request(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(endpoint, data: body);
    } on DioException catch (e) {
      throw e;
    }
  }
}

final scopeCategoryDropdown = Provider<ScopeCategoryDroupdown>((ref) => ScopeCategoryDroupdown(ref: ref));
