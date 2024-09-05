import 'package:oho_hero/config/routes/export.dart';

class DistrictController
    extends StateNotifier<AsyncValue<List<DistrictModel>>> {
  DistrictController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;
  Future<void> read({required String? districtId}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readDistrict({
          'master_addr_prefecture_id': districtId,
        });
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final districtProvider =
    StateNotifierProvider<DistrictController, AsyncValue<List<DistrictModel>>>(
        (ref) => DistrictController(ref));
