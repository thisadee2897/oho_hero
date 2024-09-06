import 'package:oho_hero/config/routes/export.dart';

class AddressApi {
  final Ref ref;
  final String _subSistrict = 'MasterDataAll/Get_master_addr_district';
  final String _district = 'MasterDataAll/Get_master_addr_prefecture';
  final String _province = 'MasterDataAll/Get_master_addr_province';
  AddressApi({required this.ref});

  Future<List<SubdistrictModel>> readSubDistrict(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await _companyRequest(_subSistrict, body);
      return List<SubdistrictModel>.from(List<dynamic>.from(res.data).map((item) => SubdistrictModel.fromJson(item)));
    } catch (e) {
      throw e;
    }
  }

  Future<List<DistrictModel>> readDistrict(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await _companyRequest(_district, body);
      return List<DistrictModel>.from(List<dynamic>.from(res.data).map((item) => DistrictModel.fromJson(item)));
    } catch (e) {
      throw e;
    }
  }

  Future<List<ProvinceModel>> readProvince(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await _companyRequest(_province, body);
      return List<ProvinceModel>.from(List<dynamic>.from(res.data).map((item) => ProvinceModel.fromJson(item)));
    } catch (e) {
      throw e;
    }
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

final addressApi = Provider<AddressApi>((ref) => AddressApi(ref: ref));
