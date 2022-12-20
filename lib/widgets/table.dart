import 'dart:ffi';

import 'package:flutter/material.dart';

class Tablee extends StatelessWidget {



    @override
  Widget build(BuildContext context) {
    var icons;
    return Table  (
      border: TableBorder.all(borderRadius: BorderRadius.circular(20),color:Color(0xff7771D1), ),
      columnWidths:{
        0:FractionColumnWidth(0.25),
        1:FractionColumnWidth(0.25),
        2:FractionColumnWidth(0.5),
      },
      children: [
        buildTableRow(['خيارات','رقم الباص','خط السير'],header:true),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
        buildTableRow(['المعادي/القاهره','د ق ل / 573',Icons.more_horiz,]),
      ],
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
          print(e);
          var index = cell.indexOf(e);
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
              : index == 3
              ? SizedBox(
              height: 59,
              child: Icon(
                e,
              ))
              : Container(
            height: 59,
            child: Center(
              child: Text(e),
            ),
          );
        }).toList(),
      );
    }



}



