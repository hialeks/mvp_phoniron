import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class IconBadgeTab extends StatelessWidget {
  final bool showBadge;
  final String badgeContent;
  final IconData icon;

  const IconBadgeTab({
    super.key,
    required this.showBadge,
    required this.badgeContent,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: badges.Badge(
        showBadge: showBadge,
        badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
        badgeContent: Text(
          badgeContent,
          style: const TextStyle(color: Colors.white),
        ),
        child: Icon(icon),
      ),
    );
  }
}
