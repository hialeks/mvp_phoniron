import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ExpandedUserProfileMenu extends StatefulWidget {
  const ExpandedUserProfileMenu({
    super.key,
  });

  @override
  State<ExpandedUserProfileMenu> createState() =>
      _ExpandedUserProfileMenuState();
}

class _ExpandedUserProfileMenuState extends State<ExpandedUserProfileMenu> {
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
          initiallyExpanded: _expandedTileIndex == 1,
          onExpansionChanged: (expanded) {
            _onExpansionChanged(expanded, 1);
          },
          title: const Text("Basic phoniron ID"),
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
            child: Icon(PhosphorIconsLight.userCircle),
          ),
          children: const <Widget>[
            ListTile(
              title: Text("Basic phoniron ID"),
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
          title: const Text("Friends Profile"),
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
              title: Text("Friends Profile"),
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
          title: const Text("Business Profile"),
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
              title: Text("Business Profile"),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ExpansionTile(
          key: UniqueKey(),
          initiallyExpanded: _expandedTileIndex == 4,
          onExpansionChanged: (expanded) {
            _onExpansionChanged(expanded, 4);
          },
          title: const Text("Family Profile"),
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
              title: Text("Family Profile"),
            ),
          ],
        ),
      ],
    );
  }
}
