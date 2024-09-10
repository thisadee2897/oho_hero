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
  String? initialText = '';
  bool hasChanged = false;
  @override
  void initState() {
    if (widget.selectedID != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.microtask(() {
          ref.read(districtProvider.notifier).read(subDistrictId: widget.selectedID);
        });
      });
    }
    super.initState();
  }

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
    if (!hasChanged && widget.selectedID != null && data.id != null) {
      Future.microtask(() {
        setState(() {
          initialText = showText(ref: ref, TH: data.name, EN: data.nameEN);
          widget.onchanged(data);
          hasChanged = true;
        });
      });
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
