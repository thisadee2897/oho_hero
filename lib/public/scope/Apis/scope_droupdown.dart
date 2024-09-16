import 'package:oho_hero/config/routes/export.dart';

class ScopeDroupdown {
  final Ref ref;
  final String _read = 'MasterData/Get_master_scope';
  ScopeDroupdown({required this.ref});

  Future<List<ScopeDropdownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_read, body);
    } catch (e) {
      throw e;
    }
  }

  Future<List<ScopeDropdownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _request(endpoint, body);
    return List<ScopeDropdownModel>.from(List<dynamic>.from(res.data).map((item) => ScopeDropdownModel.fromJson(item)));
  }

  Future<Response<dynamic>> _request(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(endpoint, data: body);
    } on DioException catch (e) {
      throw e;
    }
  }
}

final scopeDropdown = Provider<ScopeDroupdown>((ref) => ScopeDroupdown(ref: ref));
