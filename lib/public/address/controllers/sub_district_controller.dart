import 'package:oho_hero/config/routes/export.dart';

class SubDistrictController
    extends StateNotifier<AsyncValue<List<SubdistrictModel>>> {
  SubDistrictController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;
  Future<void> read({required String? search}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readSubDistrict({
          'text_search': search,
        });
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final subDistrictProvider = StateNotifierProvider<SubDistrictController,
    AsyncValue<List<SubdistrictModel>>>((ref) => SubDistrictController(ref));
