import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ExpandedContactsMenu extends StatefulWidget {
  const ExpandedContactsMenu({
    super.key,
  });

  @override
  State<ExpandedContactsMenu> createState() => _ExpandedContactsMenuState();
}

class _ExpandedContactsMenuState extends State<ExpandedContactsMenu> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ExpansionTile(
          title: Text("Friends"),
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
              title: Text('Friends contact list'),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        ExpansionTile(
          title: Text("Business"),
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
              title: Text('List of contacts with colleagues'),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        ExpansionTile(
          title: Text("Family"),
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
              title: Text("Family contact list"),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        ExpansionTile(
          title: Text("Create a new contact list"),
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
            child: Icon(PhosphorIconsLight.plus),
          ),
          children: <Widget>[
            ListTile(
              title: Text("New contact list"),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Divider(
          color: Color.fromARGB(17, 28, 131, 140),
          indent: 8,
          endIndent: 8,
        ),
        SizedBox(
          height: 2,
        ),
        ExpansionTile(
          title: Text("Unsorted Contacts"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: Color(0xffF1F6F7),
          shape: Border.fromBorderSide(BorderSide.none),
          leading: badges.Badge(
            showBadge: true,
            badgeStyle:
                badges.BadgeStyle(badgeColor: Color.fromARGB(255, 255, 0, 0)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.funnel),
          ),
          children: <Widget>[
            ListTile(
              title: Text("Unsorted Contacts"),
            ),
          ],
        ),
      ],
    );
  }
}
