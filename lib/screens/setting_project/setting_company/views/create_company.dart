import 'package:flutter/material.dart';
import 'package:oho_hero/config/routes/export.dart';

class CreateCompanyScreen extends BaseStatefulWidget {
  final String previousPageTitle;
  const CreateCompanyScreen(this.previousPageTitle, {Key? key}) : super(key: key, subPage: true);
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
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(industryGroupDropdownProvider.notifier).readIndustry();
    });
    super.initState();
  }

  @override
  Widget buildDesktop(BuildContext context, SizingInformation sizingInformation) {
    return content(
      crossAxisCount: 2,
      paddingDesktop: 8,
      buildDesktop: true,
    );
  }

  @override
  Widget? buildTablet(BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  @override
  Widget buildMobile(BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  Widget content({int crossAxisCount = 1, double paddingDesktop = 0.0, bool buildDesktop = false}) {
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
            if (createCompanyKey.currentState != null && createCompanyKey.currentState!.validate()) {
              context.pop();
            }
          },
        ),
      ),
      largeTitle: Text('Create company'),
    );
  }

  Widget formCompany(bool buildDesktop) {
    CompanyLogicCreateController company = ref.watch(companyLogicCreateProvider);
    CompanyLogicCreateController setCompany = ref.read(companyLogicCreateProvider);
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
                  child: IndustryGrorupDropDown(
                    selectedID: company.industryGroupId,
                    onchanged: (data) {
                      setCompany.industryGroupId = data.id;
                      setCompany.businessCategoryId = null;
                      ref.read(businessCategoryDropdownProvider.notifier).read(industryGroupId: data.id);
                    },
                  ),
                ),
                ResponsiveGridCol(
                  sm: 6,
                  md: 6,
                  lg: 4,
                  child: BusinessCategoryDropDown(
                    selectedID: company.businessCategoryId,
                    onchanged: (data) {
                      setCompany.businessCategoryId = data.id;
                    },
                  ),
                ),
                ResponsiveGridCol(
                  sm: 6,
                  md: 6,
                  lg: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormfield(
                      title: Trans.of(context).create_company__name_th,
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
                      title: Trans.of(context).create_company__name_en,
                      controller: nameENCtl,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return Trans.of(context).pleasInputData;
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
                      title: Trans.of(context).create_company__company_abbreviation_en,
                      controller: nameAbbeviationCtl,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return Trans.of(context).pleasInputData;
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
                      title: Trans.of(context).create_company__tax_id,
                      controller: taxIDCtl,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return Trans.of(context).pleasInputData;
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
                      title: Trans.of(context).create_company__email,
                      controller: emailCtl,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return Trans.of(context).pleasInputData;
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
                      title: Trans.of(context).create_company__phone_number,
                      controller: phoneNumberCtl,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return Trans.of(context).pleasInputData;
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

  Padding selectIndustryType(AsyncValue<List<IndustryGrorupDropDownModel>> industryList, CompanyController company) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: industryList.when(
        data: (data) {
          return CustomDroupdownFormfield(
            require: true,
            title: Trans.of(context).create_company__select_industry_type,
            controller: comapnytypeCtl,
            data: List.generate(
                industryList.requireValue.length,
                (index) => {
                      'id': industryList.requireValue[index].id,
                      'name': industryList.requireValue[index].name,
                    }),
            selectId: (String? value) {
              if (value != null) {
                // company.updateForm(
                //   company.dataCompany.copyWith(
                //     industryGroupId: value,
                //   ),
                // );
                setState(() {
                  comapnyGroupCtl.clear();
                });
              }
              return;
            },
          );
        },
        loading: () => CupertinoActivityIndicator(
          color: CustomColors.primaryColor,
        ),
        error: (error, stack) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            customAlert(context, error.toString());
          });
          return Text(error.toString());
        },
      ),
    );
  }

  Widget formAddress(bool buildDesktop) {
    CompanyLogicCreateController company = ref.watch(companyLogicCreateProvider);
    CompanyLogicCreateController setCompany = ref.read(companyLogicCreateProvider);
    return BoxAdapterCustom(
      buildDesktop: buildDesktop,
      child: BackgroundCustom(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  sm: 12,
                  md: 12,
                  lg: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormfield(
                      require: true,
                      title: Trans.of(context).create_company__addressDetail,
                      controller: buildingCtl,
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: SubDistrictFormfield(
                    selectedID: company.districtId,
                    onchanged: (data) {
                      if (data.id != null) {
                        setCompany.districtId = data.id;
                        setCompany.prefectureId = data.districtId;
                        setCompany.provinceId = data.provinceId;
                        Future.delayed(Duration.zero, () {
                          ref.read(districtProvider.notifier).read(subDistrictId: data.id);
                          ref.read(provinceProvider.notifier).read(districtId: data.districtId);
                          ref.read(postcodeProvider.notifier).read(id: data.id);
                          // ref.read(regionProvider.notifier).read();
                        });
                      }
                    },
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: DistrictFormfield(
                    selectedID: company.prefectureId,
                    onchanged: (data) {},
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: ProvinceFormfield(
                    selectedID: company.provinceId,
                    onchanged: (data) {
                      if (data.regionId != null) {
                        setCompany.regionId = data.regionId;
                      }
                    },
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: PostCodeFormfield(
                    selectedID: company.districtId,
                    onchanged: (data) {
                      setCompany.provinceId = data.id;
                    },
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: RegionFormfield(
                    selectedID: company.regionId,
                    onchanged: (data) {},
                  ),
                ),
              ],
            ),
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
                      Trans.of(context).create_company__titleProjectType,
                      style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
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
                                CupertinoCheckbox(value: index == 2, onChanged: (value) {}),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: IgnorePointer(
                                    child: CupertinoTextFormFieldRow(
                                      placeholder: 'ประเภทโครงการที่ ${index + 1}',
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
              padding: EdgeInsets.only(left: paddingDesktop, top: paddingDesktop == 0 ? 16 : 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Trans.of(context).create_company__titleDocument,
                      style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
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
                                FilePickerResult? result = await FilePicker.platform.pickFiles(
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
                                FilePickerResult? result = await FilePicker.platform.pickFiles(
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
                                FilePickerResult? result = await FilePicker.platform.pickFiles(
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
          Trans.of(context).create_company__titleAddress,
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
          Trans.of(context).create_company__title_Company,
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
