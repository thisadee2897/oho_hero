import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/public/address/controllers/district_controller.dart';

class DistrictFormfield extends ConsumerStatefulWidget {
  const DistrictFormfield({super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(DistrictModel) onchanged;

  @override
  ConsumerState<DistrictFormfield> createState() => _IndustryGrorupDropDownState();
}

class _IndustryGrorupDropDownState extends ConsumerState<DistrictFormfield> {
  TextEditingController districtCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<DistrictModel>> listData = ref.watch(districtProvider);
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: listData.when(
          loading: _loading,
          error: (error, stack) => _error(context, error),
          data: (data) => _data(context, data),
        ),
      );
    }
  }

  Widget _error(BuildContext context, Object error) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      customAlert(context, error.toString());
    });
    return Text(error.toString());
  }

  Widget _loading() {
    return LoadingTextField(
      title: Trans.of(context).create_company__district,
      require: true,
    );
  }

  Widget _data(BuildContext context, List<DistrictModel> data) {
    String? initialText = '';
    if (widget.selectedID != null && data.isNotEmpty) {
      var selected = data.firstWhere(
        (e) => e.id == widget.selectedID,
      );
      initialText = selected.name ?? '';
      widget.onchanged(selected);
    }
    return IgnorePointer(
      child: CustomTextFormfield(
        readOnly: true,
        title: Trans.of(context).create_company__district,
        controller: TextEditingController(
          text: initialText,
        ),
      ),
    );
  }
}
