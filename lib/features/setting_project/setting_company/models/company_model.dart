import 'package:oho_hero/config/routes/export.dart';
class Company {
  final String id;
  final String companyName;
  final List<Branch> branches;
  final List<Company>? subCompanies;

  Company({
    required this.id,
    required this.companyName,
    required this.branches,
    this.subCompanies,
  });
}
