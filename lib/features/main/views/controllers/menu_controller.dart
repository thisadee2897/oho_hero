import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/features/main/views/controllers/menu_json.dart';

class MenuController extends StateNotifier<AsyncValue<List<MainMenu>>> {
  MenuController(this.ref) : super(const AsyncValue.loading()) {
    getMenu();
  }

  final Ref ref;
  void getMenu() async {
    try {
      final data = jsonMenu['data'] as List<dynamic>;
      final menuList = data
          .map((item) => MainMenu.fromJson(item as Map<String, dynamic>))
          .toList();
      state = AsyncValue.data(menuList);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}

final menuProvider =
    StateNotifierProvider<MenuController, AsyncValue<List<MainMenu>>>(
  (ref) => MenuController(ref),
);
