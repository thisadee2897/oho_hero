import 'package:oho_hero/config/routes/export.dart';
class PostCodeFormfield extends ConsumerStatefulWidget {
  const PostCodeFormfield({super.key, this.selectedID, required this.onchanged});
  final String? selectedID;
  final Function(PostCodeModel) onchanged;

  @override
  ConsumerState<PostCodeFormfield> createState() => _IndustryGrorupDropDownState();
}

class _IndustryGrorupDropDownState extends ConsumerState<PostCodeFormfield> {
  TextEditingController districtCtl = TextEditingController();

  @override
  void initState() {
    if (widget.selectedID != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(postcodeProvider.notifier).read(id: widget.selectedID);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<PostCodeModel> listData = ref.watch(postcodeProvider);
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
      title: Trans.of(context).create_company__postalCode,
      require: true,
    );
  }

  Widget _data(BuildContext context, PostCodeModel data) {
    String? initialText = '';
    if (widget.selectedID != null) {
      initialText = data.code ?? '';
    }
    return IgnorePointer(
      child: CustomTextFormfield(
        readOnly: true,
        title: Trans.of(context).create_company__postalCode,
        controller: TextEditingController(
          text: initialText,
        ),
      ),
    );
  }
}
