// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Trans {
  Trans();

  static Trans? _current;

  static Trans get current {
    assert(_current != null,
        'No instance of Trans was loaded. Try to initialize the Trans delegate before accessing Trans.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Trans> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Trans();
      Trans._current = instance;

      return instance;
    });
  }

  static Trans of(BuildContext context) {
    final instance = Trans.maybeOf(context);
    assert(instance != null,
        'No instance of Trans present in the widget tree. Did you add Trans.delegate in localizationsDelegates?');
    return instance!;
  }

  static Trans? maybeOf(BuildContext context) {
    return Localizations.of<Trans>(context, Trans);
  }

  /// `เข้าสู่ระบบ`
  String get login__button_login {
    return Intl.message(
      'เข้าสู่ระบบ',
      name: 'login__button_login',
      desc: '',
      args: [],
    );
  }

  /// `เข้าสู่ระบบ`
  String get login__button_ok {
    return Intl.message(
      'เข้าสู่ระบบ',
      name: 'login__button_ok',
      desc: '',
      args: [],
    );
  }

  /// `เข้าสู่ระบบ`
  String get login__title_Login {
    return Intl.message(
      'เข้าสู่ระบบ',
      name: 'login__title_Login',
      desc: '',
      args: [],
    );
  }

  /// `บริษัท`
  String get create_company__title_Company {
    return Intl.message(
      'บริษัท',
      name: 'create_company__title_Company',
      desc: '',
      args: [],
    );
  }

  /// `เลือกประเภทอุตสาหกรรม`
  String get create_company__select_industry_type {
    return Intl.message(
      'เลือกประเภทอุตสาหกรรม',
      name: 'create_company__select_industry_type',
      desc: '',
      args: [],
    );
  }

  /// `เลือกประเภทโครงการ`
  String get create_company__select_project_type {
    return Intl.message(
      'เลือกประเภทโครงการ',
      name: 'create_company__select_project_type',
      desc: '',
      args: [],
    );
  }

  /// `เลือกหมวดหมู่ธุรกิจ`
  String get create_company__select_business_category {
    return Intl.message(
      'เลือกหมวดหมู่ธุรกิจ',
      name: 'create_company__select_business_category',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อบริษัท (ภาษาไทย)`
  String get create_company__name_th {
    return Intl.message(
      'ชื่อบริษัท (ภาษาไทย)',
      name: 'create_company__name_th',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อบริษัท (ภาษาอังกฤษ)`
  String get create_company__name_en {
    return Intl.message(
      'ชื่อบริษัท (ภาษาอังกฤษ)',
      name: 'create_company__name_en',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อย่อบริษัท`
  String get create_company__company_abbreviation_en {
    return Intl.message(
      'ชื่อย่อบริษัท',
      name: 'create_company__company_abbreviation_en',
      desc: '',
      args: [],
    );
  }

  /// `เลขประจำตัวผู้เสียภาษี`
  String get create_company__tax_id {
    return Intl.message(
      'เลขประจำตัวผู้เสียภาษี',
      name: 'create_company__tax_id',
      desc: '',
      args: [],
    );
  }

  /// `อีเมล`
  String get create_company__email {
    return Intl.message(
      'อีเมล',
      name: 'create_company__email',
      desc: '',
      args: [],
    );
  }

  /// `หมายเลขโทรศัพท์`
  String get create_company__phone_number {
    return Intl.message(
      'หมายเลขโทรศัพท์',
      name: 'create_company__phone_number',
      desc: '',
      args: [],
    );
  }

  /// `ที่อยู่`
  String get create_company__titleAddress {
    return Intl.message(
      'ที่อยู่',
      name: 'create_company__titleAddress',
      desc: '',
      args: [],
    );
  }

  /// `ภูมิภาค`
  String get create_company__region {
    return Intl.message(
      'ภูมิภาค',
      name: 'create_company__region',
      desc: '',
      args: [],
    );
  }

  /// `ข้อมูลที่อยู่`
  String get create_company__addressDetail {
    return Intl.message(
      'ข้อมูลที่อยู่',
      name: 'create_company__addressDetail',
      desc: '',
      args: [],
    );
  }

  /// `ตำบล/แขวง`
  String get create_company__subDistrict {
    return Intl.message(
      'ตำบล/แขวง',
      name: 'create_company__subDistrict',
      desc: '',
      args: [],
    );
  }

  /// `ค้นหาตำบล/แขวง`
  String get create_company__searchSubDistrict {
    return Intl.message(
      'ค้นหาตำบล/แขวง',
      name: 'create_company__searchSubDistrict',
      desc: '',
      args: [],
    );
  }

  /// `อำเภอ/เขต`
  String get create_company__district {
    return Intl.message(
      'อำเภอ/เขต',
      name: 'create_company__district',
      desc: '',
      args: [],
    );
  }

  /// `จังหวัด`
  String get create_company__province {
    return Intl.message(
      'จังหวัด',
      name: 'create_company__province',
      desc: '',
      args: [],
    );
  }

  /// `รหัสไปรษณีย์`
  String get create_company__postalCode {
    return Intl.message(
      'รหัสไปรษณีย์',
      name: 'create_company__postalCode',
      desc: '',
      args: [],
    );
  }

  /// `ประเภทโครงการ`
  String get create_company__titleProjectType {
    return Intl.message(
      'ประเภทโครงการ',
      name: 'create_company__titleProjectType',
      desc: '',
      args: [],
    );
  }

  /// `เอกสาร`
  String get create_company__titleDocument {
    return Intl.message(
      'เอกสาร',
      name: 'create_company__titleDocument',
      desc: '',
      args: [],
    );
  }

  /// `วันเริ่มต้น`
  String get startDate {
    return Intl.message(
      'วันเริ่มต้น',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `วันสิ้นสุด`
  String get endDate {
    return Intl.message(
      'วันสิ้นสุด',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `เพิ่มประเภทโครงการ`
  String get addProjectType {
    return Intl.message(
      'เพิ่มประเภทโครงการ',
      name: 'addProjectType',
      desc: '',
      args: [],
    );
  }

  /// `สร้าง`
  String get textCreate {
    return Intl.message(
      'สร้าง',
      name: 'textCreate',
      desc: '',
      args: [],
    );
  }

  /// `กรุณากรอกข้อมูล`
  String get pleasInputData {
    return Intl.message(
      'กรุณากรอกข้อมูล',
      name: 'pleasInputData',
      desc: '',
      args: [],
    );
  }

  /// `กรุณาระบุข้อมูล`
  String get pleasSelectData {
    return Intl.message(
      'กรุณาระบุข้อมูล',
      name: 'pleasSelectData',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Trans> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Trans> load(Locale locale) => Trans.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
