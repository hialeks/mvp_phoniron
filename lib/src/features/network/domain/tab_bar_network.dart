import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/widgets/elements/icon_tab_badge.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_chat_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_contacts_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_email_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_settings_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_userprofile_menu.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget tabBarNetwork(BuildContext context) {
  return DefaultTabController(
    length: 5,
    child: Column(
      children: [
        const TabBar(
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

        const SizedBox(height: 3),

        // Expanded Content

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: const TabBarView(
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
  );
}
