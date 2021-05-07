import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavItem extends StatefulWidget {
  final IconData icon;
  final bool selected;
  final String text;
  final Function onTap;

  const NavItem(
      {Key key,
      this.icon,
      @required this.selected,
      @required this.text,
      this.onTap})
      : super(key: key);
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 375),
            width: double.infinity,
            height: 60.0,
            color: widget.selected ? Colors.black87 : Colors.red,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    widget.icon,
                    size: 30,
                    color: widget.selected ? Colors.white : Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MediaQuery.of(context).size.width > 700
                      ? Text(
                          widget.text.toUpperCase(),
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:
                                widget.selected ? Colors.white : Colors.black,
                          ),
                        )
                      : SizedBox(
                          width: 10,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
