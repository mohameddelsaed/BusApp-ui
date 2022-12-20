
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText}) ;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.all(20),
      child: SizedBox(
        width: 300,
        child: TextFormField(
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            fillColor: Color(0xffF5F5F5),
            filled: true,
            prefixIcon: Icon(Icons.search_outlined,color:Colors.grey,),
            hintText: hintText ,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10) ,
                borderSide:BorderSide(
                  color: Color(0xffF5F5F5),
                )
            ),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(10) ,
              borderSide:BorderSide(
                color: Color(0xffF5F5F5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
