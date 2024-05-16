import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ExpandedUserProfileMenu extends StatelessWidget {
  const ExpandedUserProfileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ExpansionTile(
          title: Text("Basic phoniron ID"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: Color(0xffF1F6F7),
          shape: Border.fromBorderSide(BorderSide.none),
          leading: badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.userCircle),
          ),
          children: <Widget>[
            ListTile(
              title: Text("Basic phoniron ID"),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        ExpansionTile(
          title: Text("Friends Profile"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: Color(0xffF1F6F7),
          shape: Border.fromBorderSide(BorderSide.none),
          leading: badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.usersFour),
          ),
          children: <Widget>[
            ListTile(
              title: Text("Friends Profile"),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        ExpansionTile(
          title: Text("Business Profile"),
          //backgroundColor: Color.fromARGB(117, 237, 240, 255),
          collapsedBackgroundColor: Color(0xffF1F6F7),
          shape: Border.fromBorderSide(BorderSide.none),
          leading: badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.buildings),
          ),
          children: <Widget>[
            ListTile(
              title: Text("Business Profile"),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        ExpansionTile(
          title: Text("Family Profile"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: Color(0xffF1F6F7),
          shape: Border.fromBorderSide(BorderSide.none),
          leading: badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.tree),
          ),
          children: <Widget>[
            ListTile(
              title: Text("Family Profile"),
            ),
          ],
        ),
      ],
    );
  }
}
