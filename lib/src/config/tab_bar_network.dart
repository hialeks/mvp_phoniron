import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/chat_cards.dart';
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

                Column(
                  children: [
                    ChatCard01(),
                    ChatCard02(),
                    ChatCard04(),
                    ChatCard05(),
                    ChatCard06(),
                    ChatCard07(),
                    ChatCard08(),
                    ChatCard09(),
                    ChatCard10(),
                  ],
                ),

                // Contact Lists

                Column(
                  children: [
                    ExpansionTile(
                      title: Text("Friends"),
                      // backgroundColor: Color.fromARGB(117, 242, 246, 247),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.usersFour),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('Friends contact list'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ExpansionTile(
                      title: Text("Business"),
                      //backgroundColor: Color.fromARGB(117, 237, 240, 255),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.buildings),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('List of contacts with colleagues'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ExpansionTile(
                      title: Text("Family"),
                      // backgroundColor: Color.fromARGB(117, 242, 246, 247),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.tree),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text("Family contact list"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ExpansionTile(
                      title: Text("Create a new contact list"),
                      // backgroundColor: Color.fromARGB(117, 242, 246, 247),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.plus),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text("New contact list"),
                        ),
                      ],
                    ),
                  ],
                ),

                // E-mail

                Column(),

                // User Profile

                Column(
                  children: [
                    ExpansionTile(
                      title: Text("Basic phoniron ID"),
                      // backgroundColor: Color.fromARGB(117, 242, 246, 247),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.userCircle),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text("Basic phoniron ID"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ExpansionTile(
                      title: Text("Friends Profile"),
                      // backgroundColor: Color.fromARGB(117, 242, 246, 247),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.usersFour),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text("Friends Profile"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ExpansionTile(
                      title: Text("Business Profile"),
                      //backgroundColor: Color.fromARGB(117, 237, 240, 255),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.buildings),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text("Business Profile"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ExpansionTile(
                      title: Text("Family Profile"),
                      // backgroundColor: Color.fromARGB(117, 242, 246, 247),
                      collapsedBackgroundColor: Color(0xffF1F6F7),
                      shape: Border.fromBorderSide(BorderSide.none),
                      leading: badges.Badge(
                        showBadge: false,
                        badgeStyle:
                            badges.BadgeStyle(badgeColor: Color(0xff1C828C)),
                        badgeContent: Text(
                          '',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        child: Icon(PhosphorIconsLight.tree),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text("Family Profile"),
                        ),
                      ],
                    ),
                  ],
                ),

                // Network Settings

                Column(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
