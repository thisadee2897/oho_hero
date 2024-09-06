import 'package:oho_hero/config/routes/export.dart';

class ReadCompanyController extends StateNotifier<AsyncValue<List<CompanyForm>>> {
  ReadCompanyController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> read({required CompanyForm data}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<CompanyForm> response = await ref.read(companyAPI).read({
        'main_master_company': data.toJson(),
        'update_password': data.passwordOriginal,
      });
      return response;
    });
  }
}

final readCompanyProvider =
    StateNotifierProvider<CompanyController, AsyncValue<List<CompanyForm>>>((ref) => CompanyController(ref));
