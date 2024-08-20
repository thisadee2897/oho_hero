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
