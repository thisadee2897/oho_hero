import 'package:oho_hero/config/routes/export.dart';

class PostCodeController extends StateNotifier<AsyncValue<PostCodeModel>> {
  PostCodeController(this.ref) : super(AsyncValue.data(PostCodeModel()));
  final Ref ref;
  Future<void> read({required String? districtId}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(addressApi).readPostCode({
          'master_addr_district_id': districtId,
        });
        return res.first;
      } catch (e) {
        throw e;
      }
    });
  }
}

final postcodeProvider = StateNotifierProvider<PostCodeController, AsyncValue<PostCodeModel>>(
  (ref) => PostCodeController(ref),
);
