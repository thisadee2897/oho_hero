import 'package:oho_hero/config/routes/export.dart';

class UnitDroupdown {
  final Ref ref;
  final String _read = 'MasterData/Get_master_unit';
  UnitDroupdown({required this.ref});

  Future<List<UnitDropdownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_read, body);
    } catch (e) {
      throw e;
    }
  }

  Future<List<UnitDropdownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _request(endpoint, body);
    return List<UnitDropdownModel>.from(List<dynamic>.from(res.data).map((item) => UnitDropdownModel.fromJson(item)));
  }

  Future<Response<dynamic>> _request(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(endpoint, data: body);
    } on DioException catch (e) {
      throw e;
    }
  }
}

final unitDropdown = Provider<UnitDroupdown>((ref) => UnitDroupdown(ref: ref));
