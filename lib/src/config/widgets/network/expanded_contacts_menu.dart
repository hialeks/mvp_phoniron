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
  int? _expandedTileIndex;

  void _onExpansionChanged(bool expanded, int index) {
    setState(() {
      if (expanded) {
        _expandedTileIndex = index;
      } else if (_expandedTileIndex == index) {
        _expandedTileIndex = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          key: UniqueKey(),
          initiallyExpanded: _expandedTileIndex == 0,
          onExpansionChanged: (expanded) {
            _onExpansionChanged(expanded, 0);
          },
          title: const Text("Friends"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: const Color(0xffF1F6F7),
          shape: const Border.fromBorderSide(BorderSide.none),
          leading: const badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.usersFour),
          ),
          children: const <Widget>[
            ListTile(
              title: Text('Friends contact list'),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTile(
          key: UniqueKey(),
          initiallyExpanded: _expandedTileIndex == 1,
          onExpansionChanged: (expanded) {
            _onExpansionChanged(expanded, 1);
          },
          title: const Text("Business"),
          //backgroundColor: Color.fromARGB(117, 237, 240, 255),
          collapsedBackgroundColor: const Color(0xffF1F6F7),
          shape: const Border.fromBorderSide(BorderSide.none),
          leading: const badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.buildings),
          ),
          children: const <Widget>[
            ListTile(
              title: Text('List of contacts with colleagues'),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTile(
          key: UniqueKey(),
          initiallyExpanded: _expandedTileIndex == 2,
          onExpansionChanged: (expanded) {
            _onExpansionChanged(expanded, 2);
          },
          title: const Text("Family"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: const Color(0xffF1F6F7),
          shape: const Border.fromBorderSide(BorderSide.none),
          leading: const badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.tree),
          ),
          children: const <Widget>[
            ListTile(
              title: Text("Family contact list"),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTile(
          key: UniqueKey(),
          initiallyExpanded: _expandedTileIndex == 3,
          onExpansionChanged: (expanded) {
            _onExpansionChanged(expanded, 3);
          },
          title: const Text("Create a new contact list"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: const Color(0xffF1F6F7),
          shape: const Border.fromBorderSide(BorderSide.none),
          leading: const badges.Badge(
            showBadge: false,
            badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.plus),
          ),
          children: const <Widget>[
            ListTile(
              title: Text("New contact list"),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        const Divider(
          color: Color.fromARGB(17, 28, 131, 140),
          indent: 8,
          endIndent: 8,
        ),
        const SizedBox(
          height: 2,
        ),
        ExpansionTile(
          key: UniqueKey(),
          initiallyExpanded: _expandedTileIndex == 4,
          onExpansionChanged: (expanded) {
            _onExpansionChanged(expanded, 4);
          },
          title: const Text("Unsorted Contacts"),
          // backgroundColor: Color.fromARGB(117, 242, 246, 247),
          collapsedBackgroundColor: const Color(0xffF1F6F7),
          shape: const Border.fromBorderSide(BorderSide.none),
          leading: const badges.Badge(
            showBadge: true,
            badgeStyle:
                badges.BadgeStyle(badgeColor: Color.fromARGB(255, 255, 0, 0)),
            badgeContent: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(PhosphorIconsLight.funnel),
          ),
          children: const <Widget>[
            ListTile(
              title: Text("Unsorted Contacts"),
            ),
          ],
        ),
      ],
    );
  }
}
