import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/main.dart';
import 'package:oho_hero/shared_components/custom_cupertino_date.dart';

class CustomDatePickerFormfield extends ConsumerWidget {
  CustomDatePickerFormfield({
    required this.title,
    required this.controller,
    this.require = false,
    this.validator,
    this.readOnly = false,
    required this.onSave,
    this.initialDate,
    this.maximumYear,
    this.maximumDate,
    this.minimumDate,
  });

  final String title;
  final TextEditingController controller;
  final bool require;
  final String? Function(String?)? validator;
  final readOnly;
  final ScrollController _scrollController = ScrollController();
  final String? Function(String?)? onSave;
  final DateTime? initialDate;
  final DateTime? maximumDate;
  final DateTime? minimumDate;
  final int? maximumYear;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            if (require)
              Text("*", style: TextStyle(color: CupertinoColors.systemRed)),
            Text(
              "$title",
              style: TextStyle(
                fontSize: 14,
                color: readOnly
                    ? CupertinoColors.systemGrey3
                    : CupertinoDynamicColor.resolve(
                        CupertinoDynamicColor.withBrightness(
                          color: CupertinoColors.darkBackgroundGray,
                          darkColor:
                              CupertinoColors.systemGrey3.highContrastColor,
                        ),
                        context,
                      ),
              ),
            ),
          ],
        ),
        IgnorePointer(
          ignoring: readOnly,
          child: CupertinoButton(
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => Container(
                  height: 300,
                  color: CupertinoColors.systemBackground.resolveFrom(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 245,
                        child: CustomCupertinoDatePicker(
                          locale: ref.watch(localeProvider).languageCode,
                          maximumYear: maximumYear,
                          dateOrder: DatePickerDateOrder.dmy,
                          maximumDate: maximumDate,
                          minimumDate: minimumDate,
                          use24hFormat: true,
                          initialDateTime: initialDate,
                          mode: CustomCupertinoDatePickerMode.date,
                          onDateTimeChanged: (DateTime value) {
                            controller.text =
                                previewForFormattedDate(date: value, ref: ref);
                            onSave!(value.toString().split(' ')[0]);
                          },
                        ),
                      ),
                      CupertinoButton(
                        child: Text('Done'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            padding: EdgeInsets.zero,
            child: IgnorePointer(
              child: Stack(
                children: [
                  CupertinoTextFormFieldRow(
                    readOnly: readOnly,
                    placeholderStyle: placeholderStyleCustom(
                        context: context, readOnly: readOnly),
                    textAlignVertical: TextAlignVertical.center,
                    controller: controller,
                    cursorColor: CustomColors.primaryColor,
                    style: styleCustom(context),
                    padding: paddingCustom(),
                    decoration:
                        decorationCustom(context: context, readOnly: readOnly),
                    autovalidateMode: AutovalidateMode.always,
                    validator: validator,
                    placeholder: title,
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: Icon(
                      Icons.date_range,
                      color: CupertinoColors.systemGrey2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

String previewForFormattedDate(
    {required DateTime date, required WidgetRef ref}) {
  Locale locale = ref.watch(localeProvider);
  int buddhistYear = date.year;

  DateFormat dateFormat = DateFormat('d MMMM yyyy', locale.languageCode);
  if (locale.languageCode == 'th') {
    buddhistYear += 543;
  }

  // Format the date
  String formattedDate = dateFormat.format(
    DateTime(buddhistYear, date.month, date.day),
  );

  return formattedDate;
}
