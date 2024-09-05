import 'package:flutter/material.dart';
import 'package:oho_hero/config/routes/export.dart';

class CustomDroupdownFormfield extends StatelessWidget {
  CustomDroupdownFormfield({
    super.key,
    required this.title,
    required this.controller,
    this.require = false,
    this.validator,
    this.readOnly = false,
    required this.data,
    this.selectId,
    this.initId,
  });

  final String title;
  final TextEditingController controller;
  final bool require;
  final String? Function(String?)? validator;
  final readOnly;
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> data;
  final String? Function(String?)? selectId;

  final String? initId;
  @override
  Widget build(BuildContext context) {
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
          child: PullDownButton(
            itemsOrder: PullDownMenuItemsOrder.downwards,
            scrollController: _scrollController,
            itemBuilder: (BuildContext context) => List.generate(
              data.length,
              (i) => PullDownMenuItem(
                title: '${data[i]['name']}',
                onTap: () {
                  controller.text = data[i]['name'];
                  selectId!(data[i]['id']);
                },
              ),
            ),
            buttonBuilder:
                (BuildContext context, Future<void> Function() showMenu) {
              return CupertinoButton(
                onPressed: showMenu,
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
                        decoration: decorationCustom(
                            context: context, readOnly: readOnly),
                        autovalidateMode: AutovalidateMode.always,
                        validator: validator,
                        placeholder: title,
                      ),
                      Positioned(
                        top: 11,
                        right: 10,
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: CupertinoColors.systemGrey2,
                        ),
                      ),
                      Positioned(
                        bottom: 11,
                        right: 10,
                        child: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: CupertinoColors.systemGrey2,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
