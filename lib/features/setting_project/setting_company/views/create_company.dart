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
  TextEditingController dateCtl = TextEditingController();
  TextEditingController timeCtl = TextEditingController();
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
  final ScrollController _scrollController = ScrollController();
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
              topbar(),
              spasce(buildDesktop),
              titleCompany(buildDesktop),
              formCompany(buildDesktop),
              spasce(buildDesktop),
              titleAddress(buildDesktop),
              formAddress(buildDesktop),
              spasce(buildDesktop),
              formProjectTypeAndDocument(buildDesktop, paddingDesktop),
            ],
          ),
        ),
      ),
    );
  }

  Widget topbar() {
    return CupertinoSliverNavigationBar(
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
    );
  }

  Widget formCompany(bool buildDesktop) {
    return BoxAdapterCustom(
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
                    child: CustomDateTimePickerFormfield(
                      initialDate: DateTime.now(),
                      buildDesktop: buildDesktop,
                      maximumYear: DateTime.now().year,
                      // require: true,
                      title: 'วัน/เดือน/ปีเกิด เวลา',
                      controller: dateCtl,
                      onSave: (String? value) {
                        print(value);
                        return;
                      },
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  sm: 6,
                  md: 6,
                  lg: 4,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomDatePickerFormfield(
                            initialDate: DateTime.now(),
                            buildDesktop: buildDesktop,
                            maximumYear: DateTime.now().year,
                            // require: true,
                            title: 'วัน/เดือน/ปีเกิด',
                            controller: dateCtl,
                            onSave: (String? value) {
                              print(value);
                              return;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTimePickerFormfield(
                            initialDate: DateTime.now(),
                            buildDesktop: buildDesktop,
                            maximumYear: DateTime.now().year,
                            title: 'เวลา',
                            controller: timeCtl,
                            onSave: (String? value) {
                              print(value);
                              return;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  sm: 6,
                  md: 6,
                  lg: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomDroupdownFormfield(
                      require: true,
                      title: 'เลือกประเภทธุรกิจ',
                      controller: comapnytypeCtl,
                      data: [
                        {
                          'id': '1',
                          'name': 'ประเภทธุรกิจ 1',
                        },
                        {
                          'id': '2',
                          'name': 'ประเภทธุรกิจ 2',
                        },
                        {
                          'id': '3',
                          'name': 'ประเภทธุรกิจ 3',
                        }
                      ],
                      selectId: (String? value) {
                        setState(() {
                          comapnyGroupCtl.clear();
                        });
                        return;
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
                    child: CustomDroupdownFormfield(
                      readOnly: comapnytypeCtl.text.isEmpty,
                      require: true,
                      title: 'เลือกหมวดธุรกิจ',
                      controller: comapnyGroupCtl,
                      data: [
                        {
                          'id': '1',
                          'name': 'หมวดธุรกิจ 1',
                        },
                        {
                          'id': '2',
                          'name': 'หมวดธุรกิจ 2',
                        },
                        {
                          'id': '3',
                          'name': 'หมวดธุรกิจ 3',
                        }
                      ],
                      selectId: (String? value) {
                        print('Selectid : $value');
                        return;
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
    );
  }

  Widget formAddress(bool buildDesktop) {
    return BoxAdapterCustom(
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
    );
  }

  Widget formProjectTypeAndDocument(bool buildDesktop, double paddingDesktop) {
    return BoxAdapterCustom(
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
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .tabLabelTextStyle,
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
                                    value: index == 2, onChanged: (value) {}),
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
                  left: paddingDesktop, top: paddingDesktop == 0 ? 16 : 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Document',
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .tabLabelTextStyle,
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
                                    await FilePicker.platform.pickFiles(
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
                              icon: Icon(CupertinoIcons.tray_arrow_up),
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
                                    await FilePicker.platform.pickFiles(
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
                              icon: Icon(CupertinoIcons.tray_arrow_up),
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
                                    await FilePicker.platform.pickFiles(
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
                              icon: Icon(CupertinoIcons.tray_arrow_up),
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
    );
  }

  Widget titleAddress(bool buildDesktop) {
    return BoxAdapterCustom(
      buildDesktop: buildDesktop,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Address',
          style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
        ),
      ),
    );
  }

  Widget titleCompany(bool buildDesktop) {
    return BoxAdapterCustom(
      buildDesktop: buildDesktop,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Company',
          style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
        ),
      ),
    );
  }

  Widget spasce(bool buildDesktop) {
    return BoxAdapterCustom(
      buildDesktop: buildDesktop,
      child: SizedBox(height: 16),
    );
  }
}
