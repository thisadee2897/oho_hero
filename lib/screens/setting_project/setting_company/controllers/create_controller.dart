import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/screens/setting_project/setting_company/logic/create.dart';

class CreateCompanyController extends StateNotifier<AsyncValue<CompanyForm>> {
  CreateCompanyController(this.ref) : super(AsyncValue.data(CompanyForm()));
  final Ref ref;
  Future<void> create() async {
    var value = ref.read(companyLogicCreateProvider);
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      CompanyForm newCompany = await ref.read(companyAPI).create({
        'main_master_company': CompanyForm(
          id: value.id,
          name: value.name,
          nameEn: value.nameEN,
          taxId: value.taxId,
          email: value.email,
          phoneNumber: value.phoneNumber,
          address: value.address,
          districtId: value.districtId,
          prefectureId: value.prefectureId,
          provinceId: value.provinceId,
          postcodeId: value.postcodeId,
          regionId: value.regionId,
          active: value.active,
          logoPath: value.logoPath,
          industryGroupId: value.industryGroupId,
          businessCategoryId: value.businessCategoryId,
          attachCert: value.attachCert,
          attachBoj5: value.attachBoj5,
          pp20: value.pp20,
          typeId: value.typeId,
          version: value.version,
          typeIdIpdate: value.typeIdUpdate,
          versionUpdate: value.versionUpdate,
          passwordOriginal: value.passwordOriginal,
          userLoginId: value.userLoginId,
          startDate: value.startDate.toString(),
          endDate: value.endDate.toString(),
        ).toJson(),
        'update_password': value.passwordOriginal,
      });
      return newCompany;
    });
  }
}

final createCompanyProvider =
    StateNotifierProvider<CreateCompanyController, AsyncValue<CompanyForm>>((ref) => CreateCompanyController(ref));
