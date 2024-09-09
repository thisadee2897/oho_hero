import 'package:oho_hero/config/routes/export.dart';

class ProvinceController extends StateNotifier<AsyncValue<ProvinceModel>> {
  ProvinceController(this.ref) : super(AsyncValue.data(ProvinceModel()));
  final Ref ref;
  Future<void> read({required String? prefectureId, String? id}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readProvince({
          'master_addr_prefecture_id': prefectureId,
        });
        return res.first;
      } catch (e) {
        throw e;
      }
    });
  }
}

final provinceProvider =
    StateNotifierProvider<ProvinceController, AsyncValue<ProvinceModel>>((ref) => ProvinceController(ref));
