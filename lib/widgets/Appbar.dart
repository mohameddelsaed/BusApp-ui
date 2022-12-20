import 'package:flutter/material.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(80);

 appbar ({  required this.title }) ;
 String? title ;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: AppBar(

      title: Text(title!),
        centerTitle: true,
        actions:  [
       IconButton(
           onPressed: (){}, icon: Padding(
             padding:  EdgeInsets.only(right: 16),
             child: Icon(Icons.subdirectory_arrow_right_sharp,color: Colors.white,),
           ),
       ),],
        leading: Icon(Icons.directions_bus_filled_sharp,color: Colors.red,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40)
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff7771D1),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)
            ),
          ),
        ),
      ),
    );
  }
}
