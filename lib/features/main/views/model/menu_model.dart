import 'dart:convert';

class SubMenu {
  final int id;
  final String name;
  final String path;

  SubMenu({
    required this.id,
    required this.name,
    required this.path,
  });

  factory SubMenu.fromJson(Map<String, dynamic> json) {
    return SubMenu(
      id: json['sub_menu_id'],
      name: json['sub_menu_name'],
      path: json['sub_menu_path'],
    );
  }
}

class MainMenu {
  final int id;
  final String name;
  final String path;
  final List<SubMenu> subMenu;

  MainMenu({
    required this.id,
    required this.name,
    required this.path,
    required this.subMenu,
  });

  factory MainMenu.fromJson(Map<String, dynamic> json) {
    var subMenuList = json['sub_menu'] as List;
    List<SubMenu> subMenus = subMenuList.map((i) => SubMenu.fromJson(i)).toList();

    return MainMenu(
      id: json['main_menu_id'],
      name: json['main_menu_name'],
      path: json['main_menu_path'],
      subMenu: subMenus,
    );
  }
}

List<MainMenu> parseMainMenu(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<MainMenu>((json) => MainMenu.fromJson(json)).toList();
}
