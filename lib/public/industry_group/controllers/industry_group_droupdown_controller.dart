import 'package:oho_hero/config/routes/export.dart';

class IndustryGroupDroupdownController extends StateNotifier<AsyncValue<List<IndustryGrorupDropDownModel>>> {
  IndustryGroupDroupdownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;
  Future<void> readIndustry() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(industryGroupDroupdown).readApi({});
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final industryGroupDropdownProvider =
    StateNotifierProvider<IndustryGroupDroupdownController, AsyncValue<List<IndustryGrorupDropDownModel>>>(
        (ref) => IndustryGroupDroupdownController(ref));
