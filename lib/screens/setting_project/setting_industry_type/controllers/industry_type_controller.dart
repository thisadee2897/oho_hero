import 'package:oho_hero/config/routes/export.dart';

class IndustryController extends StateNotifier<AsyncValue<List<CompanyForm>>> {
  IndustryController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> createIndustry({required CompanyForm data}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      CompanyForm newCompany = await ref.read(industryProvider).createApi({
        'main_master_company': data.toJson(),
        'update_password': data.passwordOriginal,
      });
      List<CompanyForm> currentList = state.value ?? [];
      currentList.add(newCompany);
      return currentList;
    });
  }

  Future<void> updateIndustry({required CompanyForm data}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      CompanyForm updatedCompany = await ref.read(industryProvider).updateApi({
        'main_master_company': data.toJson(),
        'update_password': data.passwordOriginal,
      });
      List<CompanyForm> currentList = state.value ?? [];
      int index =
          currentList.indexWhere((company) => company.id == updatedCompany.id);
      if (index != -1) {
        currentList[index] = updatedCompany;
      }
      return currentList;
    });
  }

  Future<void> readIndustry({required CompanyForm data}) async {
    var profile = ref.watch(loginProvider);
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await ref
          .read(industryProvider)
          .readApi({'token_login': profile.value?.loginToken});
    });
  }

  Future<void> detailIndustry({required String id}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      CompanyForm company = await ref.read(industryProvider).detailApi({
        'main_master_company_id': id,
      });
      return [company];
    });
  }
}
