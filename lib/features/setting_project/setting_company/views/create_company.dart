import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/features/setting_project/setting_company/widgets/search_sub_district.dart';
import 'package:oho_hero/utils/extension/extension.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CreateCompanyScreen extends BaseStatefulWidget {
  final String previousPageTitle;
  const CreateCompanyScreen(this.previousPageTitle, {Key? key})
      : super(key: key, subPage: true);

  @override
  _CreateCompanyScreenState createState() => _CreateCompanyScreenState();
}

class _CreateCompanyScreenState extends BaseState<CreateCompanyScreen> {
  TextEditingController comapnytypeCtl = TextEditingController();
  TextEditingController comapnyGroupCtl = TextEditingController();
  TextEditingController nameTHCtl = TextEditingController();
  TextEditingController nameENCtl = TextEditingController();
  TextEditingController nameAbbeviationCtl = TextEditingController();
  TextEditingController taxIDCtl = TextEditingController();
  TextEditingController emailCtl = TextEditingController();
  TextEditingController phoneNumberCtl = TextEditingController();
  TextEditingController regionCtl = TextEditingController();
  TextEditingController buildingCtl = TextEditingController();
  TextEditingController roomNumberCtl = TextEditingController();
  TextEditingController floorNumberCtl = TextEditingController();
  TextEditingController alleyCtl = TextEditingController();
  TextEditingController rordCtl = TextEditingController();
  TextEditingController subDistrictCtl = TextEditingController();
  TextEditingController districtCtl = TextEditingController();
  TextEditingController provinceCtl = TextEditingController();
  TextEditingController postcodeCtl = TextEditingController(text: '45000');
  final createCompanyKey = GlobalKey<FormState>();
  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return content(
      crossAxisCount: 2,
      paddingDesktop: 8,
      buildDesktop: true,
    );
  }

  @override
  Widget? buildTablet(
      BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  @override
  Widget buildMobile(
      BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  Widget content(
      {int crossAxisCount = 1,
      double paddingDesktop = 0.0,
      bool buildDesktop = false}) {
    return SafeArea(
      child: Form(
        key: createCompanyKey,
        child: Center(
          child: CustomScrollView(
            slivers: [
              CupertinoSliverNavigationBar(
                previousPageTitle: widget.previousPageTitle,
                stretch: false,
                alwaysShowMiddle: true,
                automaticallyImplyTitle: true,
                trailing: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ButtonCustom(
                    buttonType: ButtonType.filled,
                    text: 'Create',
                    onTap: () {
                      print(createCompanyKey.currentState!.validate());
                      if (createCompanyKey.currentState != null &&
                          createCompanyKey.currentState!.validate()) {}
                    },
                    // enabled: createCompanyKey.currentState?.validate() ?? false,
                    // loading: createCompanyKey.currentState!.validate(),
                  ),
                ),
                largeTitle: Text('Create company'),
              ),
              BoxAdapterCustom(
                buildDesktop: buildDesktop,
                child: SizedBox(height: 16),
              ),
              BoxAdapterCustom(
                buildDesktop: buildDesktop,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Company',
                    style: CustomTextStyles.header3,
                  ),
                ),
              ),
              BoxAdapterCustom(
                buildDesktop: buildDesktop,
                child: BackgroundCustom(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveGridRow(
                        children: [
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: PullDownButton(
                                itemBuilder: (BuildContext context) => [
                                  PullDownMenuItem(
                                    title: 'comapnytypeCtl 1',
                                    onTap: () {
                                      comapnytypeCtl.text = 'comapnytypeCtl 1';
                                    },
                                  ),
                                  PullDownMenuItem(
                                    title: 'comapnytypeCtl 2',
                                    onTap: () {
                                      comapnytypeCtl.text = 'comapnytypeCtl 2';
                                    },
                                  ),
                                  PullDownMenuItem(
                                    title: 'comapnytypeCtl 3',
                                    onTap: () {
                                      comapnytypeCtl.text = 'comapnytypeCtl 3';
                                    },
                                  ),
                                ],
                                buttonBuilder: (BuildContext context,
                                    Future<void> Function() showMenu) {
                                  return GestureDetector(
                                    onTap: () {
                                      showMenu();
                                    },
                                    child: CupertinoButton(
                                      onPressed: showMenu,
                                      padding: EdgeInsets.zero,
                                      child: IgnorePointer(
                                        child: CustomTextFormfield(
                                          require: true,
                                          title: 'อุตสาหกรรม',
                                          controller: comapnytypeCtl,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: PullDownButton(
                                itemBuilder: (BuildContext context) => [
                                  PullDownMenuItem(
                                    title: 'comapnyGroupCtl 1',
                                    onTap: () {
                                      comapnyGroupCtl.text =
                                          'comapnyGroupCtl 1';
                                    },
                                  ),
                                  PullDownMenuItem(
                                    title: 'comapnyGroupCtl 2',
                                    onTap: () {
                                      comapnyGroupCtl.text =
                                          'comapnyGroupCtl 2';
                                    },
                                  ),
                                  PullDownMenuItem(
                                    title: 'comapnyGroupCtl 3',
                                    onTap: () {
                                      comapnyGroupCtl.text =
                                          'comapnyGroupCtl 3';
                                    },
                                  ),
                                ],
                                buttonBuilder: (BuildContext context,
                                    Future<void> Function() showMenu) {
                                  return GestureDetector(
                                    onTap: () {
                                      showMenu();
                                    },
                                    child: CupertinoButton(
                                      onPressed: showMenu,
                                      padding: EdgeInsets.zero,
                                      child: IgnorePointer(
                                        child: CustomTextFormfield(
                                          require: true,
                                          title: 'หมวดธุรกิจ',
                                          controller: comapnyGroupCtl,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormfield(
                                title: 'Company TH',
                                controller: nameTHCtl,
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormfield(
                                require: true,
                                title: 'Company EN',
                                controller: nameENCtl,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Pleas input Data.';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormfield(
                                require: true,
                                title: 'Company Abbreviation EN',
                                controller: nameAbbeviationCtl,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Pleas input Data.';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormfield(
                                require: true,
                                title: 'Tax ID',
                                controller: taxIDCtl,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Pleas input Data.';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormfield(
                                require: true,
                                title: 'Email',
                                controller: emailCtl,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Pleas input Data.';
                                  } else if (value.isEmail()) {
                                    return null;
                                  }
                                  return 'Pleas input Domain.';
                                },
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            sm: 6,
                            md: 6,
                            lg: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomTextFormfield(
                                require: true,
                                title: 'Phone Number',
                                controller: phoneNumberCtl,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Please input Data.';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              BoxAdapterCustom(
                  buildDesktop: buildDesktop, child: SizedBox(height: 16)),
              BoxAdapterCustom(
                buildDesktop: buildDesktop,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Address',
                    style: CustomTextStyles.header3,
                  ),
                ),
              ),
              BoxAdapterCustom(
                buildDesktop: buildDesktop,
                child: BackgroundCustom(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveGridRow(children: [
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextFormfield(
                              require: true,
                              title: 'Region',
                              controller: regionCtl,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Pleas input Data.';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextFormfield(
                              title: 'Building/Village',
                              controller: buildingCtl,
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextFormfield(
                              title: 'Room Number',
                              controller: roomNumberCtl,
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextFormfield(
                              title: 'Floor Number',
                              controller: floorNumberCtl,
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextFormfield(
                              title: 'Alley/Soi',
                              controller: alleyCtl,
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextFormfield(
                              title: 'Road',
                              controller: rordCtl,
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                print('object');
                                context.go(
                                    '${Routes.company}/${Routes.createCompany}/${SearchSubDistrict.path}');
                              },
                              child: AbsorbPointer(
                                absorbing: true,
                                child: CustomTextFormfield(
                                  require: true,
                                  title: subDistrictCtl.text.isEmpty
                                      ? 'Search Subdistrict'
                                      : 'Sub district/Quarter',
                                  validator: (String? value) {
                                    // if (value!.isEmpty) {
                                    //   return 'Pleas input Data.';
                                    // }
                                    return null;
                                  },
                                  controller: subDistrictCtl,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IgnorePointer(
                              child: CustomTextFormfield(
                                readOnly: true,
                                title: 'District',
                                controller: districtCtl,
                              ),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IgnorePointer(
                              child: CustomTextFormfield(
                                readOnly: true,
                                title: 'Province',
                                controller: provinceCtl,
                              ),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 4,
                          md: 3,
                          lg: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IgnorePointer(
                              child: CustomTextFormfield(
                                readOnly: true,
                                title: 'Postal Code',
                                controller: postcodeCtl,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              BoxAdapterCustom(
                  buildDesktop: buildDesktop, child: SizedBox(height: 16)),
              BoxAdapterCustom(
                buildDesktop: buildDesktop,
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      sm: 12,
                      md: 12,
                      lg: 6,
                      child: Padding(
                        padding: EdgeInsets.only(right: paddingDesktop),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Project type',
                                style: CustomTextStyles.header3,
                              ),
                            ),
                            BackgroundCustom(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: List.generate(
                                    5,
                                    (index) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          CupertinoCheckbox(
                                              value: index == 2,
                                              onChanged: (value) {}),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: IgnorePointer(
                                              child: CupertinoTextFormFieldRow(
                                                placeholder:
                                                    'ประเภทโครงการที่ ${index + 1}',
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      sm: 12,
                      md: 12,
                      lg: 6,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: paddingDesktop,
                            top: paddingDesktop == 0 ? 16 : 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Document',
                                style: CustomTextStyles.header3,
                              ),
                            ),
                            BackgroundCustom(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () async {
                                          FilePickerResult? result =
                                              await FilePicker.platform
                                                  .pickFiles(
                                            type: FileType.custom,
                                            allowedExtensions: ['pdf'],
                                          );
                                          if (result != null) {
                                            print(result.files.single);
                                            // หากเลือกไฟล์ได้สำเร็จ
                                            // setState(() {
                                            //   _selectedFileName = result.files.single
                                            //       .name;
                                            // });
                                          }
                                        },
                                        icon:
                                            Icon(CupertinoIcons.tray_arrow_up),
                                        tooltip: 'Attach Certificate .pdf',
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: IgnorePointer(
                                          child: CupertinoTextFormFieldRow(
                                            placeholder: 'File result',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () async {
                                          FilePickerResult? result =
                                              await FilePicker.platform
                                                  .pickFiles(
                                            type: FileType.custom,
                                            allowedExtensions: ['pdf'],
                                          );
                                          if (result != null) {
                                            print(result.files.single);
                                            // หากเลือกไฟล์ได้สำเร็จ
                                            // setState(() {
                                            //   _selectedFileName = result.files.single
                                            //       .name;
                                            // });
                                          }
                                        },
                                        icon:
                                            Icon(CupertinoIcons.tray_arrow_up),
                                        tooltip: 'Attach Obj5 Form .pdf',
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: IgnorePointer(
                                          child: CupertinoTextFormFieldRow(
                                            placeholder: 'File result',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () async {
                                          FilePickerResult? result =
                                              await FilePicker.platform
                                                  .pickFiles(
                                            type: FileType.custom,
                                            allowedExtensions: ['pdf'],
                                          );
                                          if (result != null) {
                                            print(result.files.single);
                                            // หากเลือกไฟล์ได้สำเร็จ
                                            // setState(() {
                                            //   _selectedFileName = result.files.single
                                            //       .name;
                                            // });
                                          }
                                        },
                                        icon:
                                            Icon(CupertinoIcons.tray_arrow_up),
                                        tooltip: 'Attach P.P. 20 Form .pdf',
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: IgnorePointer(
                                          child: CupertinoTextFormFieldRow(
                                            placeholder: 'File result',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              BoxAdapterCustom(
                  buildDesktop: buildDesktop, child: SizedBox(height: 16)),
              // BoxAdapterCustom(
              //   buildDesktop: buildDesktop,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       ButtonCustom(
              //         text: 'Cancel',
              //         onTap: () => context.canPop()
              //             ? context.pop()
              //             : context.go(Routes.company),
              //         buttonType: ButtonType.outlined,
              //       ),
              //       ButtonCustom(
              //         text: 'Submit',
              //         onTap: () {},
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCupertinoToolbarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoTextSelectionToolbar Example'),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return GestureDetector(
              onLongPress: () {
                final RenderBox renderBox =
                    context.findRenderObject() as RenderBox;
                final Offset localOffset = renderBox.globalToLocal(Offset.zero);
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoTextSelectionToolbar(
                      anchorAbove: localOffset,
                      anchorBelow: localOffset.translate(0, 50),
                      children: [
                        CupertinoTextSelectionToolbarButton.text(
                          onPressed: () {
                            // Copy action
                            print('Copy button pressed');
                            Navigator.pop(context);
                          },
                          text: 'Copy',
                        ),
                        CupertinoTextSelectionToolbarButton.text(
                          onPressed: () {
                            // Custom action
                            print('Custom button pressed');
                            Navigator.pop(context);
                          },
                          text: 'Custom Action',
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.grey[300],
                child: Text(
                  'Long press on this text to see the Cupertino toolbar.',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
