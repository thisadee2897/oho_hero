import 'package:oho_hero/config/routes/export.dart';

class ProjectTypeDroupdownController
    extends StateNotifier<AsyncValue<List<IndustryGrorupDropDownModel>>> {
  ProjectTypeDroupdownController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> readProjectType() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        var res = await ref.read(industryGroupDroupdown).readApi({
        });
        return res;
      } catch (e) {
        throw e;
      }
    });
  }
}

final industryGroupDropdownProvider = StateNotifierProvider<
        ProjectTypeDroupdownController,
        AsyncValue<List<IndustryGrorupDropDownModel>>>(
    (ref) => ProjectTypeDroupdownController(ref));
