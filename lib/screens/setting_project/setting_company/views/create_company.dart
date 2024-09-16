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
  TextEditingController nameTHCtl = TextEditingController(text: 'บริษัท พลังงานบริสุทธิ์ จำกัด (มหาชน)');
  TextEditingController nameENCtl = TextEditingController(text: 'ENERGY ABSOLUTE PUBLIC COMPANY LIMITED');
  TextEditingController nameAbbeviationCtl = TextEditingController(text: 'EAP');
  TextEditingController taxIDCtl = TextEditingController(text: '0107551000061');
  TextEditingController emailCtl = TextEditingController(text: 'admin@energyabsolute.com');
  TextEditingController phoneNumberCtl = TextEditingController(text: '0801234556');
  TextEditingController address =
      TextEditingController(text: '89 อาคารเอไอเอ แคปปิตอล เซ็นเตอร์ ชั้นที่ 16 ถนนรัชดาภิเษก');
  TextEditingController regionCtl = TextEditingController();
  TextEditingController subDistrictCtl = TextEditingController();
  TextEditingController districtCtl = TextEditingController();
  TextEditingController provinceCtl = TextEditingController();
  TextEditingController postcodeCtl = TextEditingController(text: '45000');
  final ScrollController _scrollController = ScrollController();
  int length = 1;
  final createCompanyKey = GlobalKey<FormState>();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(industryGroupDropdownProvider.notifier).readIndustry();
      ref.read(projectTypeProvider.notifier).readProjectType();
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
    CompanyLogicCreateController company = ref.watch(companyLogicCreateProvider);
    CompanyLogicCreateController setCompany = ref.read(companyLogicCreateProvider);
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
              formProjectTypeAndDocument(buildDesktop, paddingDesktop, company, setCompany),
            ],
          ),
        ),
      ),
    );
  }

  void submitCreateCompay() async {
    CompanyLogicCreateController set = ref.read(companyLogicCreateProvider);
    if (createCompanyKey.currentState!.validate()) {
      set.name = nameTHCtl.text;
      set.nameEN = nameENCtl.text;
      set.taxId = taxIDCtl.text;
      set.email = emailCtl.text;
      set.phoneNumber = phoneNumberCtl.text;
      set.address = address.text;
      set.active = true;
      set.version = MyApp.version;
      set.versionUpdate = MyApp.version;
      set.userLoginId = ref.watch(loginProvider).requireValue.id;
      ref.read(createCompanyProvider.notifier).create();
      if (ref.watch(createCompanyProvider).hasValue) {
        context.pop();
      }
    }
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
          key: ValueKey(createCompanyKey.currentState != null && createCompanyKey.currentState!.validate()),
          enabled: createCompanyKey.currentState != null && createCompanyKey.currentState!.validate(),
          buttonType: ButtonType.filled,
          text: Trans().textCreate,
          loading: ref.watch(createCompanyProvider).isLoading,
          onTap: submitCreateCompay,
        ),
      ),
      largeTitle: Text(Trans().titleCreateCompany),
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
                    key: ValueKey(company.industryGroupId),
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
                      controller: address,
                      validator: (String? value) {
                        return value!.isEmpty ? Trans().pleasInputData : null;
                      },
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: SubDistrictFormfield(
                    selectedID: company.districtId,
                    onchanged: (SubdistrictModel data) {
                      if (data.id != null) {
                        setCompany.districtId = data.id;
                        setCompany.prefectureId = data.districtId;
                        ref.read(districtProvider.notifier).read(subDistrictId: company.districtId);
                        ref.read(provinceProvider.notifier).read(prefectureId: company.prefectureId);
                        ref.read(postcodeProvider.notifier).read(districtId: company.districtId);
                        ref.read(regionProvider.notifier).read();
                      }
                    },
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: DistrictFormfield(
                    key: ValueKey(company.districtId),
                    selectedID: company.districtId,
                    onchanged: (DistrictModel data) {},
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: ProvinceFormfield(
                    key: ValueKey(company.districtId),
                    selectedID: company.prefectureId,
                    onchanged: (ProvinceModel data) {
                      if (data.id != null) {
                        setCompany.provinceId = data.id;
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
                    key: ValueKey(company.districtId),
                    selectedID: company.districtId,
                    onchanged: (PostCodeModel data) {
                      if (data.id != null) {
                        setCompany.postcodeId = data.id;
                      }
                    },
                  ),
                ),
                ResponsiveGridCol(
                  sm: 4,
                  md: 3,
                  lg: 3,
                  child: RegionFormfield(
                    key: ValueKey(company.districtId),
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

  Widget formProjectTypeAndDocument(bool buildDesktop, double paddingDesktop, CompanyLogicCreateController company,
      CompanyLogicCreateController set) {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Trans.of(context).create_company__titleProjectType,
                      style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
                    ),
                  ),
                  BackgroundCustom(
                    child: CupertinoListSection.insetGrouped(
                      margin: EdgeInsets.all(0),
                      hasLeading: false,
                      backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
                      children: [
                        ...List.generate(
                          length,
                          (index) => Column(
                            children: [
                              ProjectTypeDropDown(
                                selectedID: company.projectTypeId,
                                onchanged: (data) {
                                  set.projectTypeId = data.id;
                                },
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomDatePickerFormfield(
                                        initialDate: company.startDate,
                                        minimumDate: company.startDate ?? DateTime.now(),
                                        require: true,
                                        title: Trans().startDate,
                                        controller: TextEditingController(
                                          text: company.startDate == null
                                              ? ''
                                              : previewForFormattedDate(
                                                  date: company.startDate ?? DateTime.now(),
                                                  ref: ref,
                                                ),
                                        ),
                                        validator: (String? value) {
                                          return value!.isEmpty ? Trans().pleasSelectData : null;
                                        },
                                        onSave: (String? value) {
                                          if (value != null) {
                                            set.startDate = sendToDateTime(value);
                                            company.endDate = null;
                                          }
                                          return;
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomDatePickerFormfield(
                                        key: ValueKey(company.startDate),
                                        initialDate: company.endDate ?? company.startDate,
                                        minimumDate: company.startDate,
                                        require: true,
                                        title: Trans().endDate,
                                        controller: TextEditingController(
                                          text: company.endDate == null
                                              ? ''
                                              : previewForFormattedDate(
                                                  date: company.endDate ?? DateTime.now(),
                                                  ref: ref,
                                                ),
                                        ),
                                        onSave: (String? value) {
                                          if (value != null) {
                                            set.endDate = sendToDateTime("${value.split(' ')[0]} 23:59:29.000");
                                          }
                                          return;
                                        },
                                        validator: (String? value) {
                                          return value!.isEmpty ? Trans().pleasSelectData : null;
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        CupertinoListTile(
                          title: Text(Trans().addProjectType),
                          leading: const Icon(
                            Icons.add_circle,
                            color: Colors.green,
                          ),
                          onTap: () {
                            setState(() {
                              length++;
                            });
                          },
                        )
                      ],
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
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Trans.of(context).create_company__titleAddress,
            style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
          ),
        ),
      ),
    );
  }

  Widget titleCompany(bool buildDesktop) {
    return BoxAdapterCustom(
      buildDesktop: buildDesktop,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Trans.of(context).create_company__title_Company,
            style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
          ),
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
