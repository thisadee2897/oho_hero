import 'package:oho_hero/config/routes/export.dart';

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
    AsyncValue<DistrictModel> district = ref.watch(districtProvider);
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: district.when(
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

  Widget _data(BuildContext context, DistrictModel data) {
    String? initialText = '';
    if (widget.selectedID != null) {
      initialText = data.name ?? '';
      widget.onchanged(data);
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
