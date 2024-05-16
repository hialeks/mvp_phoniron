import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/expanded_chat_menu.dart';
import 'package:mvp_phoniron/src/config/expanded_contacts_menu.dart';
import 'package:mvp_phoniron/src/config/expanded_email_menu.dart';
import 'package:mvp_phoniron/src/config/expanded_settings_menu.dart';
import 'package:mvp_phoniron/src/config/expanded_userprofile_menu.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget tabBarNetwork() {
  return const SizedBox(
    height: 777,
    child: DefaultTabController(
      length: 5,
      child: Column(
        children: [
          TabBar(
            tabs: [
              // Chat Icon Menu

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

              // Address Book Menu Icon

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

              // E-mail Menu Icon

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

              // User Profile Menu Icon

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

              // Settings Menu Icon

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
          SizedBox(height: 3),

          // Expanded Content

          Expanded(
            child: TabBarView(
              children: [
                // Chat Cards

                ExpandedChatMenu(),

                // Contact Lists

                ExpandedContactsMenu(),

                // E-mail

                ExpandedEmailMenu(),

                // User Profile

                ExpandedUserProfileMenu(),

                // Network Settings

                ExpandedSettingsMenu(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
