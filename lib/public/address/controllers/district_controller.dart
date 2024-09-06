import 'package:oho_hero/config/routes/export.dart';

class DistrictController extends StateNotifier<AsyncValue<DistrictModel>> {
  DistrictController(this.ref) : super(AsyncValue.data(DistrictModel()));
  final Ref ref;
  Future<void> read({required String? subDistrictId}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readDistrict({
          'master_addr_district_id': subDistrictId,
        });
        return res.first;
      } catch (e) {
        throw e;
      }
    });
  }
}

final districtProvider =
    StateNotifierProvider<DistrictController, AsyncValue<DistrictModel>>((ref) => DistrictController(ref));
