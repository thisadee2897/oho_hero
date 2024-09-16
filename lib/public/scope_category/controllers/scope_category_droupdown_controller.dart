import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/public/scope_category/Apis/scope_category_droupdown.dart';

class ScopeCategoryDroupdownController extends StateNotifier<AsyncValue<List<ScopeCategoryDropdownModel>>> {
  ScopeCategoryDroupdownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> readUnit() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(scopeCategoryDropdown).readApi({});
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final scopeCategoryDropdownProvider =
    StateNotifierProvider<ScopeCategoryDroupdownController, AsyncValue<List<ScopeCategoryDropdownModel>>>(
        (ref) => ScopeCategoryDroupdownController(ref));
