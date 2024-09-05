import 'package:oho_hero/config/routes/export.dart';

class IndustryGrorupDropDown extends ConsumerStatefulWidget {
  const IndustryGrorupDropDown(
      {super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(IndustryGrorupDropDownModel) onchanged;

  @override
  ConsumerState<IndustryGrorupDropDown> createState() =>
      _IndustryGrorupDropDownState();
}

class _IndustryGrorupDropDownState
    extends ConsumerState<IndustryGrorupDropDown> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<IndustryGrorupDropDownModel>> industryList =
        ref.watch(industryGroupDropdownProvider);
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: industryList.when(
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

  Widget _data(BuildContext context, List<IndustryGrorupDropDownModel> data) {
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
      title: Trans.of(context).create_company__select_industry_type,
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
