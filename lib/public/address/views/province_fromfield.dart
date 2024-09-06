import 'package:oho_hero/config/routes/export.dart';

class ProvinceFormfield extends ConsumerStatefulWidget {
  const ProvinceFormfield({super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(ProvinceModel) onchanged;

  @override
  ConsumerState<ProvinceFormfield> createState() => _IndustryGrorupDropDownState();
}

class _IndustryGrorupDropDownState extends ConsumerState<ProvinceFormfield> {
  TextEditingController districtCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AsyncValue<ProvinceModel> dataprovince = ref.watch(provinceProvider);
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: dataprovince.when(
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
      title: Trans.of(context).create_company__province,
      require: true,
    );
  }

  Widget _data(BuildContext context, ProvinceModel data) {
    String? initialText = '';
    if (widget.selectedID != null) {
      initialText = data.name ?? '';
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onchanged(data);
      });
    }
    return IgnorePointer(
      child: CustomTextFormfield(
        readOnly: true,
        title: Trans.of(context).create_company__province,
        controller: TextEditingController(
          text: initialText,
        ),
      ),
    );
  }
}
