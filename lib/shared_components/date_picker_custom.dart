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
    this.buildDesktop = false,
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
  final bool buildDesktop;

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
                  width: buildDesktop ? 1200 : null,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9)),
                    color:
                        CupertinoColors.systemBackground.resolveFrom(context),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 300,
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

class CustomTimePickerFormfield extends ConsumerWidget {
  CustomTimePickerFormfield({
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
    this.buildDesktop = false,
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
  final bool buildDesktop;

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
                  width: buildDesktop ? 1200 : null,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9)),
                    color:
                        CupertinoColors.systemBackground.resolveFrom(context),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 300,
                        child: CustomCupertinoDatePicker(
                          locale: ref.watch(localeProvider).languageCode,
                          maximumYear: maximumYear,
                          dateOrder: DatePickerDateOrder.dmy,
                          maximumDate: maximumDate,
                          minimumDate: minimumDate,
                          use24hFormat: true,
                          initialDateTime: initialDate,
                          mode: CustomCupertinoDatePickerMode.time,
                          onDateTimeChanged: (DateTime value) {
                            controller.text =
                                value.toString().split(' ')[1].split('.')[0];
                            onSave!(
                                value.toString().split(' ')[1].split('.')[0]);
                          },
                        ),
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
                      Icons.timer_outlined,
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

class CustomDateTimePickerFormfield extends ConsumerWidget {
  CustomDateTimePickerFormfield({
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
    this.buildDesktop = false,
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
  final bool buildDesktop;

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
                  width: buildDesktop ? 1200 : null,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9)),
                    color:
                        CupertinoColors.systemBackground.resolveFrom(context),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 300,
                        child: CustomCupertinoDatePicker(
                          locale: ref.watch(localeProvider).languageCode,
                          maximumYear: maximumYear,
                          dateOrder: DatePickerDateOrder.dmy,
                          maximumDate: maximumDate,
                          minimumDate: minimumDate,
                          use24hFormat: true,
                          initialDateTime: initialDate,
                          mode: CustomCupertinoDatePickerMode.dateAndTime,
                          onDateTimeChanged: (DateTime value) {
                            controller.text = "${previewForFormattedDate(date: value, ref: ref)} ${value.toString().split(' ')[1].split('.')[0]}";
                            onSave!(value.toString());
                          },
                        ),
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
                      Icons.calendar_month_outlined,
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
