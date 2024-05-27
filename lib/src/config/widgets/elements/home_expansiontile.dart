import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeExpansionTile extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color collapsedBackgroundColor;
  final bool showBadge;
  final IconData icon;
  final Widget tabBar;

  const HomeExpansionTile({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.collapsedBackgroundColor,
    required this.showBadge,
    required this.icon,
    required this.tabBar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        ExpansionTile(
          title: Text(title),
          backgroundColor: backgroundColor,
          collapsedBackgroundColor: collapsedBackgroundColor,
          shape: const Border.fromBorderSide(BorderSide.none),
          leading: badges.Badge(
            showBadge: showBadge,
            badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: const Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(icon),
          ),
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            tabBar,
          ],
        ),
      ],
    );
  }
}
