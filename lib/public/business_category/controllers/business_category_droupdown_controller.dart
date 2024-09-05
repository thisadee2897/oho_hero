import 'package:oho_hero/config/routes/export.dart';


class BusinessCategoryDropDownController
    extends StateNotifier<AsyncValue<List<BusinessCategoryDropDownModel>>> {
  BusinessCategoryDropDownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;
  Future<void> read({required String? industryGroupId}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(businessCategoryDroupdown).readApi({
          'master_industry_group_id': industryGroupId,
        });
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final businessCategoryDropdownProvider = StateNotifierProvider<
        BusinessCategoryDropDownController,
        AsyncValue<List<BusinessCategoryDropDownModel>>>(
    (ref) => BusinessCategoryDropDownController(ref));
