import 'package:oho_hero/config/routes/export.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final companyDataProvider = Provider<List<Company>>((ref) {
  return [
    Company(
      id: uuid.v4(),
      companyName: 'บริษัท เทค แคร์ โซลูชั่น จำกัด',
      branches: [Branch(id: uuid.v4(), branchName: 'สำนักงานใหญ่')],
      subCompanies: [
        Company(
          id: uuid.v4(),
          companyName: 'บริษัท โกลบอล คาร์บอน คอร์ปอเรชั่น จำกัด',
          branches: [Branch(id: uuid.v4(), branchName: 'สำนักงานใหญ่')],
          subCompanies: [],
        ),
      ],
    ),
    Company(
      id: uuid.v4(),
      companyName: 'บริษัท ตำกระเทย เรสเทอรองต์ พลัส จำกัด',
      branches: [
        Branch(id: uuid.v4(), branchName: 'สาขาสาเกตุ จ.ขอนแก่น'),
        Branch(id: uuid.v4(), branchName: 'สาขาหน้าเมือง จ.ขอนแก่น'),
        Branch(id: uuid.v4(), branchName: 'สาขาสาเกตุ จ.อุดรธานี'),
        Branch(id: uuid.v4(), branchName: 'สาขาสาเกตุ จ.ร้อยเอ็ด'),
        Branch(id: uuid.v4(), branchName: 'สาขาสุรินทร์ จ.สุรินทร์'),
        Branch(id: uuid.v4(), branchName: 'สาขามหาสารคาม จ.มหาสารคาม')
      ],
      subCompanies: [
        Company(
          id: uuid.v4(),
          companyName: 'อีเจ๊แจ่วฮ้อน',
          branches: [Branch(id: uuid.v4(), branchName: 'สีลม จ.กรุงเทพมหานคร')],
          subCompanies: [
            Company(
              id: uuid.v4(),
              companyName: 'Sub Sub Company 2',
              branches: [Branch(id: uuid.v4(), branchName: 'Sub Sub Branch 2')],
            ),
            Company(
              id: uuid.v4(),
              companyName: 'Sub Sub Company 3',
              branches: [Branch(id: uuid.v4(), branchName: 'Sub Sub Branch 2')],
            ),
            Company(
              id: uuid.v4(),
              companyName: 'Sub Sub Company 4',
              branches: [Branch(id: uuid.v4(), branchName: 'Sub Sub Branch 2')],
            ),
          ],
        ),
      ],
    ),
  ];
});

class CompanyController extends StateNotifier<AsyncValue<List<CompanyForm>>> {
  CompanyController(this.ref) : super(AsyncValue.data([]));
  final Ref ref;

  Future<void> update({required CompanyForm data}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      CompanyForm updatedCompany = await ref.read(companyAPI).update({
        'main_master_company': data.toJson(),
        'update_password': data.passwordOriginal,
      });
      List<CompanyForm> currentList = state.value ?? [];
      int index = currentList.indexWhere((company) => company.id == updatedCompany.id);
      if (index != -1) {
        currentList[index] = updatedCompany;
      }
      return currentList;
    });
  }

  Future<void> read({required CompanyForm data}) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      List<CompanyForm> response = await ref.read(companyAPI).read({
        'main_master_company': data.toJson(),
        'update_password': data.passwordOriginal,
      });
      return response;
    });
  }

  Future<void> detail({required String id}) async {
    var data = ref.read(companydataProvider);
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      CompanyForm company = await ref.read(companyAPI).create({
        'main_master_company_id': id,
      });
      data.name = company.name;
      return [company];
    });
  }
}

final companyProvider =
    StateNotifierProvider<CompanyController, AsyncValue<List<CompanyForm>>>((ref) => CompanyController(ref));

class CompanyDataController extends ChangeNotifier {
  CompanyForm _companyData = CompanyForm();
  String? _name;
  String? _industryGroupId;
  String? get name => _name;
  set name(String? value) {
    _name = value;
    notifyListeners();
  }

  String? get industryGroupId => _name;
  set industryGroupId(String? value) {
    _industryGroupId = value;
    notifyListeners();
  }
}

final companydataProvider = ChangeNotifierProvider((ref) => CompanyDataController());
