import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/public/scope_category/controllers/scope_category_droupdown_controller.dart';

class FormScopeCategoryDropDown extends ConsumerStatefulWidget {
  const FormScopeCategoryDropDown({super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(ScopeCategoryDropdownModel) onchanged;

  @override
  ConsumerState<FormScopeCategoryDropDown> createState() => _ProjectTypeDropDownState();
}

class _ProjectTypeDropDownState extends ConsumerState<FormScopeCategoryDropDown> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<ScopeCategoryDropdownModel>> listData = ref.watch(scopeCategoryDropdownProvider);
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
      title: Trans.of(context).create_company__select_project_type,
      require: true,
    );
  }

  Widget _data(BuildContext context, List<ScopeCategoryDropdownModel> data) {
    String? initialText;
    if (widget.selectedID != null && data.isNotEmpty) {
      var selected = data.firstWhere(
        (e) => e.id == widget.selectedID,
      );
      initialText = showText(ref: ref, TH: selected.name, EN: selected.nameEN);
    }
    return CustomDroupdownFormfield(
      validator: (String? value) {
        return value!.isEmpty ? Trans().pleasSelectData : null;
      },
      initId: widget.selectedID,
      require: true,
      title: Trans.of(context).create_company__select_project_type,
      controller: TextEditingController(
        text: initialText ?? '',
      ),
      data: List.generate(
          data.length,
          (index) => {
                'id': data[index].id,
                'name': showText(ref: ref, TH: data[index].name, EN: data[index].nameEN),
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
