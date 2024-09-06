import 'package:oho_hero/config/routes/export.dart';

class ProvinceController extends StateNotifier<AsyncValue<List<ProvinceModel>>> {
  ProvinceController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;
  Future<void> read({required String? districtId}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readProvince({
          'master_addr_prefecture_id': districtId,
        });
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final provinceProvider =
    StateNotifierProvider<ProvinceController, AsyncValue<List<ProvinceModel>>>((ref) => ProvinceController(ref));
