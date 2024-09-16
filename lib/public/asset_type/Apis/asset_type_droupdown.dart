import 'package:oho_hero/config/routes/export.dart';

class AssetTypeDroupdown {
  final Ref ref;
  final String _read = 'MasterData/Get_master_asset_type';
  AssetTypeDroupdown({required this.ref});

  Future<List<AssetTypeDropdownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_read, body);
    } catch (e) {
      throw e;
    }
  }

  Future<List<AssetTypeDropdownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _request(endpoint, body);
    return List<AssetTypeDropdownModel>.from(
        List<dynamic>.from(res.data).map((item) => AssetTypeDropdownModel.fromJson(item)));
  }

  Future<Response<dynamic>> _request(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(endpoint, data: body);
    } on DioException catch (e) {
      throw e;
    }
  }
}

final assetTypeDropdown = Provider<AssetTypeDroupdown>((ref) => AssetTypeDroupdown(ref: ref));
