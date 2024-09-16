import 'package:oho_hero/config/routes/export.dart';

class ScopeDroupdownController extends StateNotifier<AsyncValue<List<ScopeDropdownModel>>> {
  ScopeDroupdownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> readUnit() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(scopeDropdown).readApi({});
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final scopeDropdownProvider = StateNotifierProvider<ScopeDroupdownController, AsyncValue<List<ScopeDropdownModel>>>(
    (ref) => ScopeDroupdownController(ref));
