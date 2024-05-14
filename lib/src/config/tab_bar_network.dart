import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/chat_cards.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget tabBarNetwork() {
  return const SizedBox(
    height: 400,
    child: DefaultTabController(
      length: 5,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(
                child: badges.Badge(
                  showBadge: true,
                  badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                  badgeContent: Text(
                    '',
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                  child: Icon(PhosphorIconsLight.chatDots),
                ),
              ),
              Tab(
                child: badges.Badge(
                  showBadge: false,
                  badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                  badgeContent: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  child: Icon(PhosphorIconsLight.addressBook),
                ),
              ),
              Tab(
                child: badges.Badge(
                  showBadge: true,
                  badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                  badgeContent: Text(
                    '',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  child: Icon(PhosphorIconsLight.envelopeSimple),
                ),
              ),
              Tab(
                child: badges.Badge(
                  showBadge: false,
                  badgeContent: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  child: Icon(PhosphorIconsLight.userCircleCheck),
                ),
              ),
              Tab(
                child: badges.Badge(
                  showBadge: false,
                  badgeContent: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  child: Icon(PhosphorIconsLight.gear),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    ChatCard01(),
                  ],
                ),
                Column(),
                Column(),
                Column(),
                Column(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
