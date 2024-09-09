import 'package:oho_hero/config/routes/export.dart';

class ProjectTypeDroupdownController extends StateNotifier<AsyncValue<List<ProjectTypeDropdownModel>>> {
  ProjectTypeDroupdownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> readProjectType() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(projectTypeDropdown).readApi({});
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final projectTypeProvider =
    StateNotifierProvider<ProjectTypeDroupdownController, AsyncValue<List<ProjectTypeDropdownModel>>>(
        (ref) => ProjectTypeDroupdownController(ref));
