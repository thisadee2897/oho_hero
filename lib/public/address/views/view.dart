import 'package:oho_hero/config/routes/export.dart';

class BusinessCategoryDropDown extends ConsumerStatefulWidget {
  const BusinessCategoryDropDown({super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(BusinessCategoryDropDownModel) onchanged;

  @override
  ConsumerState<BusinessCategoryDropDown> createState() => _IndustryGrorupDropDownState();
}

class _IndustryGrorupDropDownState extends ConsumerState<BusinessCategoryDropDown> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<BusinessCategoryDropDownModel>> listData = ref.watch(businessCategoryDropdownProvider);
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
      title: Trans.of(context).create_company__select_business_category,
      require: true,
    );
  }

  Widget _data(BuildContext context, List<BusinessCategoryDropDownModel> data) {
    String? initialText;
    if (widget.selectedID != null && data.isNotEmpty) {
      var selected = data.firstWhere(
        (e) => e.id == widget.selectedID,
      );
      initialText = selected.name;
    }
    return CustomDroupdownFormfield(
      initId: widget.selectedID,
      require: true,
      title: Trans.of(context).create_company__select_business_category,
      controller: TextEditingController(
        text: initialText ?? '',
      ),
      data: List.generate(
          data.length,
          (index) => {
                'id': data[index].id,
                'name': data[index].name,
              }),
      selectId: (String? value) {
        if (value != null) {
          var selected = data.firstWhere((e) => e.id == value);
          widget.onchanged(selected);
        }
        return;
      },
    );
  }
}
