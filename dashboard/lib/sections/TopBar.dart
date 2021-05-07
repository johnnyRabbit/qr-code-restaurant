import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  //final String title;

  //const TopBar(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('TopBar'),
      //backgroundColor: Colors.white30,
      automaticallyImplyLeading: false,
      centerTitle: true,
      //toolbarHeight: 50.0,
      elevation: 3,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(70);
}
