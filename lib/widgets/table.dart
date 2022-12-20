import 'package:flutter/material.dart';

class Tablee extends StatelessWidget {
  const Tablee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFD),
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Table(
        border: TableBorder.all(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff7771D1),
        ),
        columnWidths: const {
          0: FractionColumnWidth(0.25),
          1: FractionColumnWidth(0.25),
          2: FractionColumnWidth(0.5),
        },
        children: [
          const BuildTableRow(
            cell: ['خيارات', 'رقم الباص', 'خط السير'],
            isHeader: true,
          ).build(context),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
          buildTableRow([
            'المعادي/القاهره',
            'د ق ل / 573',
            Icons.more_horiz,
          ]),
        ],
      ),
    );
  }

  //Method For Build Row//

  TableRow buildTableRow(
    List<dynamic>? cell, {
    bool header = false,
    BuildContext? context,
  }) {
    return TableRow(
      children: cell!.map((e) {
        int index = cell.indexOf(e);
        return header == true
            ? Container(
                height: 59,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.blueAccent, width: 0.1),
                ),
                child: Center(
                  child: Text(e),
                ),
              )
            : index == 2
                ? SizedBox(
                    height: 59,
                    child: Icon(
                      e,
                    ))
                : SizedBox(
                    height: 59.0,
                    child: Center(
                      child: Text(e),
                    ),
                  );
      }).toList(),
    );
  }
}

class BuildTableRow extends TableRow {
  const BuildTableRow({
    required this.cell,
    this.isHeader = false,
  });

  final bool isHeader;
  final List<dynamic> cell;

  TableRow build(BuildContext context) {
    return TableRow(
      children: cell.map((e) {
        int index = cell.indexOf(e);
        return isHeader == true
            ? Container(
                height: 59,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.blueAccent, width: 0.1),
                ),
                child: Center(
                  child: Text(e),
                ),
              )
            : index == 2
                ? SizedBox(
                    height: 59,
                    child: Icon(
                      e,
                    ))
                : SizedBox(
                    height: 59.0,
                    child: Center(
                      child: Text(e),
                    ),
                  );
      }).toList(),
    );
  }
}
