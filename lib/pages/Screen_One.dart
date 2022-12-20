
import 'package:flutter/material.dart';

import '../widgets/Appbar.dart';
import '../widgets/table.dart';
import '../widgets/text_field.dart';


class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  static String id ='screenOne';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor:  Color(0xffFFFFFD),
          appBar: appbar(
            title: 'جميع الباصات',
          ),
          body: Column(
            children: [
              Row(
                children: [
                  CustomTextField(hintText: 'البحث عن باص',),
                  Icon(Icons.add_chart_outlined,color:Color(0xff7771D1),size: 40,),
                ],
              ),
              SizedBox(height: 50,),
              Tablee(),
            ],
          ),
        ),
    );
  }


}
