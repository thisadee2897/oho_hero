import 'package:oho_hero/config/routes/export.dart';


class AddressApi {
  final Ref ref;
  final String _subSistrict = 'MasterDataAll/Get_master_addr_district';
  final String _district = 'MasterDataAll/Get_master_addr_prefecture';
  final String _subSistrictForId = 'MasterDataAll/Get_master_addr_district_by_id';
  final String _postCode = 'MasterDataAll/Get_master_addr_postcode';
  final String _province = 'MasterDataAll/Get_master_addr_province';
  final String _region = 'MasterDataAll/Get_master_addr_region';
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

  Future<List<PostCodeModel>> readPostCode(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await _companyRequest(_postCode, body);
      return List<PostCodeModel>.from(List<dynamic>.from(res.data).map((item) => PostCodeModel.fromJson(item)));
    } catch (e) {
      throw e;
    }
  }

  Future<List<SubdistrictModel>> readSubdistrictForId(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await _companyRequest(_subSistrictForId, body);
      return List<SubdistrictModel>.from(List<dynamic>.from(res.data).map((item) => SubdistrictModel.fromJson(item)));
    } catch (e) {
      throw e;
    }
  }

  Future<List<RegionModel>> readRegion(Map<String, dynamic> body) async {
    try {
      Response<dynamic> res = await _companyRequest(_region, body);
      return List<RegionModel>.from(List<dynamic>.from(res.data).map((item) => RegionModel.fromJson(item)));
    } catch (e) {
      throw e;
    }
  }

  Future<Response<dynamic>> _companyRequest(String endpoint, Map<String, dynamic> body) async {
    try {
      return await ref.read(apiClientProvider).post(
            endpoint,
            data: body,
          );
    } on DioException catch (e) {
      throw e;
    }
  }
}

final addressApi = Provider<AddressApi>((ref) => AddressApi(ref: ref));
