import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_basics/constants/app_colors.dart';

class TopBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const TopBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Image titleImage = Image.asset('assets/gdrfa-logo.png',
        fit: BoxFit.contain,
        height: 52.7,
        width: 200,
        alignment: FractionalOffset.center);
    final Image capitalImage = Image.asset('assets/dubai-capital.png',
        fit: BoxFit.contain,
        height: 42,
        width: 120,
        alignment: FractionalOffset.center);
    return AppBar(
      textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      iconTheme: new IconThemeData(color: textColor),
      backgroundColor: Colors.white,
      title: Container(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
//          IconButton(
//            icon: Icon(Icons.menu),
//            color: textColor,
//            onPressed: () {},
//          ),
            titleImage,
//          Text('My Establishments', style: TextStyle(fontSize: 16)),
//          Text('Status Inquiry', style: TextStyle(fontSize: 16)),
//          Text('Reports', style: TextStyle(fontSize: 16)),
//          capitalImage,
            ButtonTheme(
              height: 27,
              minWidth: 1.5,
              child: RaisedButton(
                child: Text('عربى'),
                textColor: Colors.white,
                color: textColor,
                onPressed: () {},
                shape: StadiumBorder(),
              ),
            ),
//          Container(
//            width: 1,
//            height: 30,
//            color: Colors.grey,
//          ),
//          FlatButton.icon(
//            icon: Text('zcrfs32'),
//            label: Icon(Icons.arrow_drop_down),
//            shape: StadiumBorder(),
//            onPressed: () {},
//            color: Colors.white,
//            hoverColor: Colors.white,
//          ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(70);
}
