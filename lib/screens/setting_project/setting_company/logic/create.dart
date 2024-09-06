import 'package:oho_hero/config/routes/export.dart';

final companyLogicCreateProvider = ChangeNotifierProvider((ref) => CompanyLogicCreateController());

class CompanyLogicCreateController extends ChangeNotifier {
  String _id = "0";
  String? _name;
  String? _nameEN;
  String? _taxId;
  String? _email;
  String? _phoneNumber;
  String? _address;
  String? _districtId;
  String? _prefectureId;
  String? _provinceId;
  String? _postcodeId;
  String? _regionId;
  bool? _active;
  String? _logoPath;
  String? _industryGroupId;
  String? _businessCategoryId;
  String? _attachCert;
  String? _attachBoj5;
  String? _pp20;
  String? _type_id;
  String? _version;
  String? _typeIdIpdate;
  String? _versionUpdate;
  String? _passwordOriginal;
  String? _userLoginId;
  String? _projectTypeId;
  DateTime? _startDate;
  DateTime? _endDate;
  // Getters and Setters for all fields
  String get id => _id;
  set id(String value) {
    _id = value;
    notifyListeners();
  }

  String? get name => _name;
  set name(String? value) {
    _name = value;
    notifyListeners();
  }

  String? get nameEN => _nameEN;
  set nameEN(String? value) {
    _nameEN = value;
    notifyListeners();
  }

  String? get taxId => _taxId;
  set taxId(String? value) {
    _taxId = value;
    notifyListeners();
  }

  String? get email => _email;
  set email(String? value) {
    _email = value;
    notifyListeners();
  }

  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? value) {
    _phoneNumber = value;
    notifyListeners();
  }

  String? get address => _address;
  set address(String? value) {
    _address = value;
    notifyListeners();
  }

  String? get districtId => _districtId;
  set districtId(String? value) {
    _districtId = value;
    notifyListeners();
  }

  String? get prefectureId => _prefectureId;
  set prefectureId(String? value) {
    _prefectureId = value;
    notifyListeners();
  }

  String? get provinceId => _provinceId;
  set provinceId(String? value) {
    _provinceId = value;
    notifyListeners();
  }

  String? get postcodeId => _postcodeId;
  set postcodeId(String? value) {
    _postcodeId = value;
    notifyListeners();
  }

  String? get regionId => _regionId;
  set regionId(String? value) {
    _regionId = value;
    notifyListeners();
  }

  bool? get active => _active;
  set active(bool? value) {
    _active = value;
    notifyListeners();
  }

  String? get logoPath => _logoPath;
  set logoPath(String? value) {
    _logoPath = value;
    notifyListeners();
  }

  String? get industryGroupId => _industryGroupId;
  set industryGroupId(String? value) {
    _industryGroupId = value;
    notifyListeners();
  }

  String? get businessCategoryId => _businessCategoryId;
  set businessCategoryId(String? value) {
    _businessCategoryId = value;
    notifyListeners();
  }

  String? get attachCert => _attachCert;
  set attachCert(String? value) {
    _attachCert = value;
    notifyListeners();
  }

  String? get attachBoj5 => _attachBoj5;
  set attachBoj5(String? value) {
    _attachBoj5 = value;
    notifyListeners();
  }

  String? get pp20 => _pp20;
  set pp20(String? value) {
    _pp20 = value;
    notifyListeners();
  }

  String? get typeId => _type_id;
  set typeId(String? value) {
    _type_id = value;
    notifyListeners();
  }

  String? get version => _version;
  set version(String? value) {
    _version = value;
    notifyListeners();
  }

  String? get typeIdUpdate => _typeIdIpdate;
  set typeIdUpdate(String? value) {
    _typeIdIpdate = value;
    notifyListeners();
  }

  String? get versionUpdate => _versionUpdate;
  set versionUpdate(String? value) {
    _versionUpdate = value;
    notifyListeners();
  }

  String? get passwordOriginal => _passwordOriginal;
  set passwordOriginal(String? value) {
    _passwordOriginal = value;
    notifyListeners();
  }

  String? get userLoginId => _userLoginId;
  set userLoginId(String? value) {
    _userLoginId = value;
    notifyListeners();
  }

  String? get projectTypeId => _projectTypeId;
  set projectTypeId(String? value) {
    _projectTypeId = value;
    notifyListeners();
  }

  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
    notifyListeners();
  }

  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
    notifyListeners();
  }
}
