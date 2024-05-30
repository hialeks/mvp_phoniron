// home_expansiontile.dart

import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeExpansionTile extends StatefulWidget {
  final String title;
  final Color backgroundColor;
  final Color collapsedBackgroundColor;
  final bool showBadge;
  final IconData icon;
  final Widget tabBar;
  final ValueChanged<bool>? onExpansionChanged;
  final bool initiallyExpanded;

  const HomeExpansionTile({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.collapsedBackgroundColor,
    required this.showBadge,
    required this.icon,
    required this.tabBar,
    this.onExpansionChanged,
    this.initiallyExpanded = false,
    required TabController controller,
  });

  @override
  State<HomeExpansionTile> createState() => _HomeExpansionTileState();
}

class _HomeExpansionTileState extends State<HomeExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        ExpansionTile(
          enabled: true,
          title: Text(widget.title),
          backgroundColor: widget.backgroundColor,
          collapsedBackgroundColor: widget.collapsedBackgroundColor,
          shape: const Border.fromBorderSide(BorderSide.none),
          leading: badges.Badge(
            showBadge: widget.showBadge,
            badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
            badgeContent: const Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: Icon(widget.icon),
          ),
          onExpansionChanged: widget.onExpansionChanged,
          initiallyExpanded: widget.initiallyExpanded,
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            widget.tabBar,
          ],
        ),
      ],
    );
  }
}
