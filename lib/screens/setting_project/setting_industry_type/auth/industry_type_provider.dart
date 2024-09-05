import 'package:oho_hero/config/routes/export.dart';

class IndustryProvider {
  final Ref ref;
  final String _create = 'security/login/Register';
  final String _update = 'security/updateCompany';
  final String _read = 'security/getCompany';
  IndustryProvider({required this.ref});

  Future<CompanyForm> createApi(Map<String, dynamic> body) async {
    return _single(_create, body);
  }

  Future<CompanyForm> updateApi(Map<String, dynamic> body) async {
    return _single(_update, body);
  }

  Future<CompanyForm> detailApi(Map<String, dynamic> body) async {
    return _single(_update, body);
  }

  Future<List<CompanyForm>> readApi(Map<String, dynamic> body) async {
    return _list(_read, body);
  }

  Future<CompanyForm> _single(
      String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _companyRequest(endpoint, body);
    return CompanyForm.fromJson(res.data['data'][0]);
  }

  Future<List<CompanyForm>> _list(
      String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _companyRequest(endpoint, body);
    return List<CompanyForm>.from(List<dynamic>.from(res.data['data'])
        .map((item) => CompanyForm.fromJson(item)));
  }

  Future<Response<dynamic>> _companyRequest(
      String endpoint, Map<String, dynamic> body) async {
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

final industryProvider =
    Provider<IndustryProvider>((ref) => IndustryProvider(ref: ref));
