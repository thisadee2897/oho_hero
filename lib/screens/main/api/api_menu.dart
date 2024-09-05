import 'package:flutter_riverpod/flutter_riverpod.dart';
class MenuRepository {
  final Ref ref;
  final _allMenu = 'all-menu';

  MenuRepository({
    required this.ref,
  });

  // Future<List<MainMenu>> allMenu(Map<String, dynamic> body) async {
  //   try {
  //     Response<dynamic> res =
  //         await ref.read(apiClientProvider).post('$_allMenu', data: body);
  //     print(res);
  //   } on DioException catch (_) {
  //     rethrow;
  //   }
  // }

}

final menuRepositoryProvider = Provider<MenuRepository>((ref) {
  return MenuRepository(ref: ref);
});
