import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/widgets/elements/icon_tab_badge.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_chat_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_contacts_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_email_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_settings_menu.dart';
import 'package:mvp_phoniron/src/features/network/domain/expanded_userprofile_menu.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget tabBarNetwork(BuildContext context, TabController controller) {
  return Column(
    children: [
      TabBar(
        controller: controller,
        tabs: const [
          IconBadgeTab(
            showBadge: true,
            badgeContent: "",
            icon: PhosphorIconsLight.chatDots,
          ),
          IconBadgeTab(
            showBadge: false,
            badgeContent: "",
            icon: PhosphorIconsLight.addressBook,
          ),
          IconBadgeTab(
            showBadge: true,
            badgeContent: "",
            icon: PhosphorIconsLight.envelopeSimple,
          ),
          IconBadgeTab(
            showBadge: false,
            badgeContent: "",
            icon: PhosphorIconsLight.userCircleCheck,
          ),
          IconBadgeTab(
            showBadge: false,
            badgeContent: "",
            icon: PhosphorIconsLight.gear,
          ),
        ],
      ),
      const SizedBox(height: 3),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: TabBarView(
          controller: controller,
          children: const [
            ExpandedChatMenu(),
            ExpandedContactsMenu(),
            ExpandedEmailMenu(),
            ExpandedUserProfileMenu(),
            ExpandedSettingsMenu(),
          ],
        ),
      ),
    ],
  );
}
