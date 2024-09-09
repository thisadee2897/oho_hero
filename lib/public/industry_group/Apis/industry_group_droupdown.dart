import 'package:oho_hero/config/routes/export.dart';

class IndustryGroupDroupdown {
  final Ref ref;
  final String _readIndustry = 'MasterDataAll/Getmaster_industry_group';
  IndustryGroupDroupdown({required this.ref});

  Future<List<IndustryGrorupDropDownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_readIndustry, body);
    } catch (e) {
      print(e);
      throw e;
    }
  }

  Future<List<IndustryGrorupDropDownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _request(endpoint, body);
    List<dynamic> data = List<dynamic>.from(res.data);
    return List<IndustryGrorupDropDownModel>.from(data.map((item) => IndustryGrorupDropDownModel.fromJson(item)));
  }

  Future<Response<dynamic>> _request(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(endpoint, data: body);
    } on DioException catch (e) {
      throw e;
    }
  }
}

final industryGroupDroupdown = Provider<IndustryGroupDroupdown>((ref) => IndustryGroupDroupdown(ref: ref));
