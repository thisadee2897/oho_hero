// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:oho_hero/config/routes/export.dart';

class CustomTable20Data extends StatefulWidget {
  final int currentPage;
  final int totalPage;
  final List<Table20DataModel> listData;
  final void Function(int index)? onOpen;
  final void Function(int index)? nextPage;
  final void Function(int index)? backPage;

  const CustomTable20Data({
    super.key,
    required this.listData,
    required this.onOpen,
    this.currentPage = 1,
    this.totalPage = 1,
    this.nextPage,
    this.backPage,
  });

  @override
  State<CustomTable20Data> createState() => _CustomTable20DataState();
}

class _CustomTable20DataState extends State<CustomTable20Data> {
  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    List<Table20DataModel> filteredListData = List.from(widget.listData);
    if (screenSize < 450) {
      filteredListData.removeWhere((e) => !e.showMobile);
    } else if (screenSize < 768) {
      filteredListData.removeWhere((e) => !e.showTablet);
    }

    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4, bottom: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              header(filteredListData),
              Expanded(
                child: datatable(filteredListData, widget.onOpen),
              ),
              Container(
                decoration: BoxDecoration(
                  color: CustomColors.primaryColor.withOpacity(0.3),
                ),
                height: 40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: widget.currentPage - 1 == 0
                          ? null
                          : () {
                              widget.nextPage!(widget.currentPage - 1);
                            },
                      icon: const Icon(Icons.arrow_left_sharp),
                    ),
                    Text('หน้า${widget.currentPage}/${widget.totalPage}'),
                    IconButton(
                      onPressed: widget.totalPage - widget.currentPage == 0
                          ? null
                          : () {
                              widget.nextPage!(widget.currentPage + 1);
                            },
                      icon: const Icon(Icons.arrow_right_sharp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget datatable(List<Table20DataModel> filteredListData,
      void Function(int index)? onOpen) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          filteredListData[0].dataTable.length,
          (index) {
            return InkWell(
              onTap: () {
                if (onOpen != null) {
                  onOpen(index);
                }
              },
              child: Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                color: (index % 2 != 0)
                    ? CustomColors.primaryColor.withOpacity(0.05)
                    : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        child: Text(
                          "${index + 1}.",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: List.generate(
                          filteredListData.length,
                          (i) => filteredListData[i].columnSize != null
                              ? SizedBox(
                                  width: filteredListData[i].columnSize ??
                                      double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2, right: 2),
                                    child: filteredListData[i]
                                                    .dataTable[index] ==
                                                true ||
                                            filteredListData[i]
                                                    .dataTable[index] ==
                                                false
                                        ? Center(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10, right: 10),
                                              padding: const EdgeInsets.only(
                                                  left: 4, right: 4),
                                              decoration: BoxDecoration(
                                                color: filteredListData[i]
                                                            .dataTable[index] ==
                                                        true
                                                    ? Colors.green
                                                    : Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                filteredListData[i]
                                                            .dataTable[index] ==
                                                        true
                                                    ? 'ON'
                                                    : 'OFF',
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              )),
                                            ),
                                          )
                                        : Text(
                                            filteredListData[i]
                                                .dataTable[index]
                                                .toString(),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: filteredListData[i].right
                                                ? TextAlign.right
                                                : TextAlign.left,
                                          ),
                                  ),
                                )
                              : Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 2, right: 2),
                                    child: Text(
                                      filteredListData[i]
                                          .dataTable[index]
                                          .toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: filteredListData[i].right
                                          ? TextAlign.right
                                          : TextAlign.left,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Container header(List<Table20DataModel> filteredListData) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.primaryColor.withOpacity(0.3),
      ),
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 50,
            child: Padding(
              padding: EdgeInsets.only(left: 2, right: 2),
              child: Text(
                'ลำดับ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: List.generate(
                filteredListData.length,
                (index) => filteredListData[index].columnSize != null
                    ? SizedBox(
                        width: filteredListData[index].columnSize ??
                            double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2, right: 2),
                          child: Text(
                            filteredListData[index].headerName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: filteredListData[index].right
                                ? TextAlign.right
                                : TextAlign.left,
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2, right: 2),
                          child: Text(
                            filteredListData[index].headerName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: filteredListData[index].right
                                ? TextAlign.right
                                : TextAlign.left,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Table20DataModel {
  String headerName;
  List<dynamic> dataTable;
  double? columnSize;
  bool right;
  bool showTablet;
  bool showMobile;

  Table20DataModel({
    required this.headerName,
    required this.dataTable,
    required this.columnSize,
    this.right = false,
    this.showTablet = true,
    this.showMobile = true,
  });
}
