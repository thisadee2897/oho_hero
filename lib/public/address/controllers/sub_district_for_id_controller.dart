import 'package:oho_hero/config/routes/export.dart';

class SubDistrictForIdController extends StateNotifier<AsyncValue<List<SubdistrictModel>>> {
  SubDistrictForIdController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;
  Future<void> read({required String? id}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readSubdistrictForId({
          'master_addr_district_id': id,
        });
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final subDistrictForIdProvider = StateNotifierProvider<SubDistrictForIdController, AsyncValue<List<SubdistrictModel>>>(
  (ref) => SubDistrictForIdController(ref),
);
