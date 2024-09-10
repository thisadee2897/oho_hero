import 'package:oho_hero/config/routes/export.dart';

class SubDistrictFormfield extends ConsumerStatefulWidget {
  SubDistrictFormfield({super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(SubdistrictModel) onchanged;

  @override
  ConsumerState<SubDistrictFormfield> createState() => _IndustryGrorupDropDownState();
}

class _IndustryGrorupDropDownState extends ConsumerState<SubDistrictFormfield> {
  String initialText = '';
  bool hasChanged = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.selectedID != null) {
        Future.microtask(() {
          ref.read(subDistrictForIdProvider.notifier).read(id: widget.selectedID);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<List<SubdistrictModel>> listData = ref.watch(subDistrictForIdProvider);
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
      title: widget.selectedID == null
          ? Trans.of(context).create_company__searchSubDistrict
          : Trans.of(context).create_company__subDistrict,
      require: true,
    );
  }

  Widget _data(BuildContext context, List<SubdistrictModel> data) {
    if (!hasChanged && widget.selectedID != null && data.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        initialText = showText(ref: ref, TH: data.first.name, EN: data.first.nameEN);
        widget.onchanged(data.first);
        setState(() {
          hasChanged = true;
        });
      });
    }
    return GestureDetector(
      onTap: () async {
        SubdistrictModel? selectedSubDistrict =
            await context.push('${Routes.company}/${Routes.createCompany}/${SearchSubDistrict.path}');
        if (selectedSubDistrict != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(subDistrictForIdProvider.notifier).read(id: selectedSubDistrict.id);
          });
          initialText = showText(ref: ref, TH: selectedSubDistrict.name, EN: selectedSubDistrict.nameEN);
          widget.onchanged(selectedSubDistrict);
          setState(() {
            hasChanged = true;
          });
          return;
        }
      },
      child: AbsorbPointer(
        absorbing: true,
        child: CustomTextFormfield(
          require: true,
          title: initialText.isEmpty
              ? Trans.of(context).create_company__searchSubDistrict
              : Trans.of(context).create_company__subDistrict,
          validator: (String? value) {
            return value!.isEmpty ? Trans().pleasSelectData : null;
          },
          controller: TextEditingController(
            text: initialText,
          ),
        ),
      ),
    );
  }
}
