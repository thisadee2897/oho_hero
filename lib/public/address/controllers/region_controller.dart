import 'package:oho_hero/config/routes/export.dart';

class RegionController extends StateNotifier<AsyncValue<List<RegionModel>>> {
  RegionController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;
  Future<void> read() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readRegion({});
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final regionProvider =
    StateNotifierProvider<RegionController, AsyncValue<List<RegionModel>>>((ref) => RegionController(ref));
