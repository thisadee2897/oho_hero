import 'package:oho_hero/config/routes/export.dart';

class CompanyProvider {
  final Ref ref;
  final String _create = 'security/login/Register';
  final String _update = 'security/updateCompany';
  final String _read = 'security/getCompany';
  CompanyProvider({required this.ref});

  Future<CompanyForm> create(Map<String, dynamic> body) async {
    return _companyRequestSingle(_create, body);
  }

  Future<CompanyForm> update(Map<String, dynamic> body) async {
    return _companyRequestSingle(_update, body);
  }

  Future<CompanyForm> detail(Map<String, dynamic> body) async {
    return _companyRequestSingle(_update, body);
  }

  Future<List<CompanyForm>> read(Map<String, dynamic> body) async {
    return _companyRequestList(_read, body);
  }

  Future<CompanyForm> _companyRequestSingle(
      String endpoint, Map<String, dynamic> body) async {
    Response<dynamic> res = await _companyRequest(endpoint, body);
    return CompanyForm.fromJson(res.data['data'][0]);
  }

  Future<List<CompanyForm>> _companyRequestList(
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

final companyProvider =
    Provider<CompanyProvider>((ref) => CompanyProvider(ref: ref));
