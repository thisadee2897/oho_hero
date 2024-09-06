import 'package:oho_hero/config/routes/export.dart';

class SubDistrictFormfield extends ConsumerStatefulWidget {
  const SubDistrictFormfield({super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(SubdistrictModel) onchanged;

  @override
  ConsumerState<SubDistrictFormfield> createState() => _IndustryGrorupDropDownState();
}

class _IndustryGrorupDropDownState extends ConsumerState<SubDistrictFormfield> {
  @override
  void initState() {
    super.initState();
    if (widget.selectedID != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Future.delayed(Duration.zero, () {
          ref.read(subDistrictForIdProvider.notifier).read(id: widget.selectedID);
        });
      });
    }
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
    String initialText = '';
    if (widget.selectedID != null && data.isNotEmpty && initialText != data.first.name) {
      if (data.isNotEmpty && initialText.isEmpty) {
        initialText = data.first.name ?? '';
        // widget.onchanged(data.first);
      }
    }
    return GestureDetector(
      onTap: () async {
        SubdistrictModel? selectedSubDistrict = await context.push(
          '${Routes.company}/${Routes.createCompany}/${SearchSubDistrict.path}',
        );
        if (selectedSubDistrict != null) {
          ref.read(subDistrictForIdProvider.notifier).read(id: selectedSubDistrict.id);
          initialText = selectedSubDistrict.name ?? '';
          widget.onchanged(selectedSubDistrict);
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
            // if (value!.isEmpty) {
            //   return Trans.of(context).pleasInputData;
            // }
            return null;
          },
          controller: TextEditingController(
            text: initialText,
          ),
        ),
      ),
    );
  }
}
