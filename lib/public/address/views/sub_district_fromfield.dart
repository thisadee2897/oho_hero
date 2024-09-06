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
  Widget build(BuildContext context) {
    AsyncValue<List<SubdistrictModel>> listData = ref.watch(subDistrictProvider);
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
      title: Trans.of(context).create_company__select_industry_type,
      require: true,
    );
  }

  Widget _data(BuildContext context, List<SubdistrictModel> data) {
    String initialText = '';
    if (widget.selectedID != null &&
        data.isNotEmpty &&
        data
            .where(
              (e) => e.id == widget.selectedID,
            )
            .isNotEmpty) {
      var selected = data.firstWhere(
        (e) => e.id == widget.selectedID,
      );
      initialText = selected.name ?? '';
    }
    return GestureDetector(
      onTap: () async {
        SubdistrictModel? selectedSubDistrict = await context.push(
          '${Routes.company}/${Routes.createCompany}/${SearchSubDistrict.path}',
        );
        if (selectedSubDistrict != null) {
          widget.onchanged(selectedSubDistrict);
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
