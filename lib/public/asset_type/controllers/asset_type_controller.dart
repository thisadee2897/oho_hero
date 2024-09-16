import 'package:oho_hero/config/routes/export.dart';


class AssetTypeDroupdownController extends StateNotifier<AsyncValue<List<AssetTypeDropdownModel>>> {
  AssetTypeDroupdownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> readUnit() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(assetTypeDropdown).readApi({});
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final assetTypeDropdownProvider =
    StateNotifierProvider<AssetTypeDroupdownController, AsyncValue<List<AssetTypeDropdownModel>>>(
        (ref) => AssetTypeDroupdownController(ref));
