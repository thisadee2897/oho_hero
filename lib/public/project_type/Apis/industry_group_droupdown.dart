import 'package:oho_hero/config/routes/export.dart';

class IndustryGroupDroupdown {
  final Ref ref;
  final String _read = 'security/login/Getmaster_industry_group';
  IndustryGroupDroupdown({required this.ref});

  Future<List<IndustryGrorupDropDownModel>> readApi(Map<String, dynamic> body) async {
    try {
      return await _list(_read, body);
    } catch (e) {
      throw e;
    }
  }

  Future<List<IndustryGrorupDropDownModel>> _list(String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _companyRequest(endpoint, body);
    return List<IndustryGrorupDropDownModel>.from(
        List<dynamic>.from(res.data).map((item) => IndustryGrorupDropDownModel.fromJson(item)));
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

final industryGroupDroupdown = Provider<IndustryGroupDroupdown>((ref) => IndustryGroupDroupdown(ref: ref));
