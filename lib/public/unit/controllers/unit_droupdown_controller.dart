import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/public/unit/Apis/unit_droupdown.dart';

class UnitDroupdownController extends StateNotifier<AsyncValue<List<UnitDropdownModel>>> {
  UnitDroupdownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> readUnit() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(unitDropdown).readApi({});
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final unitDropdownProvider = StateNotifierProvider<UnitDroupdownController, AsyncValue<List<UnitDropdownModel>>>(
    (ref) => UnitDroupdownController(ref));
