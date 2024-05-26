import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/widgets/icon_tab_badge.dart';
import 'package:mvp_phoniron/src/config/widgets/network/expanded_chat_menu.dart';
import 'package:mvp_phoniron/src/config/widgets/network/expanded_contacts_menu.dart';
import 'package:mvp_phoniron/src/config/widgets/network/expanded_email_menu.dart';
import 'package:mvp_phoniron/src/config/widgets/network/expanded_settings_menu.dart';
import 'package:mvp_phoniron/src/config/widgets/network/expanded_userprofile_menu.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget tabBarGroups() {
  return const SizedBox(
    //!Scheiße!
    height: 777, //!Scheiße!
    //!Scheiße!
    child: DefaultTabController(
      length: 5,
      child: Column(
        children: [
          TabBar(
            tabs: [
              // Chat Icon Menu

              IconBadgeTab(
                showBadge: true,
                badgeContent: "",
                icon: PhosphorIconsLight.chatDots,
              ),

              // Address Book Menu Icon

              IconBadgeTab(
                showBadge: false,
                badgeContent: "",
                icon: PhosphorIconsLight.addressBook,
              ),

              // E-mail Menu Icon

              IconBadgeTab(
                showBadge: true,
                badgeContent: "",
                icon: PhosphorIconsLight.envelopeSimple,
              ),

              // User Profile Menu Icon

              IconBadgeTab(
                showBadge: false,
                badgeContent: "",
                icon: PhosphorIconsLight.userCircleCheck,
              ),

              // Settings Menu Icon

              IconBadgeTab(
                showBadge: false,
                badgeContent: "",
                icon: PhosphorIconsLight.gear,
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
