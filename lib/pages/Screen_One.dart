
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
        backgroundColor:  const Color(0xffFFFFFD),
          appBar: appbar(
            title: 'جميع الباصات',
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CustomTextField(hintText: 'البحث عن باص',),
                    const Icon(Icons.add_chart_outlined,color:Color(0xff7771D1),size: 40,),
                  ],
                ),
                const Tablee(),
              ],
            ),
          ),
        ),
    );
  }


}
