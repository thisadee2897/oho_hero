import 'package:oho_hero/config/routes/export.dart';

class BusinessCategoryDroupdown {
  final Ref ref;
  final String _read = 'MasterDataAll/Get_master_business_category';
  BusinessCategoryDroupdown({required this.ref});

  Future<List<BusinessCategoryDropDownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_read, body);
    } catch (e) {
      throw e;
    }
  }

  Future<List<BusinessCategoryDropDownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _companyRequest(endpoint, body);
    return List<BusinessCategoryDropDownModel>.from(
      List<dynamic>.from(res.data).map(
        (item) => BusinessCategoryDropDownModel.fromJson(item),
      ),
    );
  }

  Future<Response<dynamic>> _companyRequest(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(
            endpoint,
            data: body,
            options: opttion,
          );
    } on DioException catch (e) {
      throw e;
    }
  }
}

final businessCategoryDroupdown = Provider<BusinessCategoryDroupdown>((ref) => BusinessCategoryDroupdown(ref: ref));
