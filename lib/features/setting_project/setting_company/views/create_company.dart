import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/utils/extension/extension.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CreateCompanyScreen extends BaseStatefulWidget {
  const CreateCompanyScreen({Key? key}) : super(key: key);

  @override
  _CreateCompanyScreenState createState() => _CreateCompanyScreenState();
}

class _CreateCompanyScreenState extends BaseState<CreateCompanyScreen> {
  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return Center(
      child: SizedBox(width: 1200, child: content(crossAxisCount: 2)),
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

  Widget content({int crossAxisCount = 1}) {
    return SafeArea(
      child: Center(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              automaticallyImplyLeading: true,
              largeTitle: Text(
                'Create company',
                style: CustomTextStyles.header2,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Company',
                  style: CustomTextStyles.header3,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    sm: 6,
                    md: 6,
                    lg: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextFormfield(
                        title: 'Company TH',
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please input Data.';
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
                        title: 'Currency',
                        controller: TextEditingController(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Address',
                  style: CustomTextStyles.header3,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ResponsiveGridRow(children: [
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormfield(
                      require: true,
                      title: 'Region',
                      controller: TextEditingController(),
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
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormfield(
                      title: 'Building/Village',
                      controller: TextEditingController(),
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
                      controller: TextEditingController(),
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
                      controller: TextEditingController(),
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
                      controller: TextEditingController(),
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
                      controller: TextEditingController(),
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
                      require: true,
                      title: 'Subdistrict/Quarter',
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Pleas input Data.';
                        } else if (value.isEmail()) {
                          return null;
                        }
                        return 'Pleas input Domain.';
                      },
                      controller: TextEditingController(),
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
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
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
                        controller: TextEditingController(),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Document',
                  style: CustomTextStyles.header3,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    sm: 12,
                    md: 12,
                    lg: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                    ),
                  ),
                  ResponsiveGridCol(
                    sm: 12,
                    md: 12,
                    lg: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                    ),
                  ),
                  ResponsiveGridCol(
                    sm: 12,
                    md: 12,
                    lg: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonCustom(
                    text: 'Cancel',
                    onTap: () => context.canPop()
                        ? context.pop()
                        : context.go(Routes.company),
                    buttonType: ButtonType.outlined,
                  ),
                  ButtonCustom(
                    text: 'Submit',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
