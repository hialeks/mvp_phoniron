import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/styles/styles.dart';
import 'package:mvp_phoniron/src/config/widgets/elements/drawer.dart';
import 'package:mvp_phoniron/src/config/widgets/elements/home_expansiontile.dart';
import 'package:mvp_phoniron/src/config/widgets/groups/tab_bar_groups.dart';
import 'package:mvp_phoniron/src/config/widgets/markt/tab_bar_markt.dart';
import 'package:mvp_phoniron/src/config/widgets/network/tab_bar_network.dart';
import 'package:mvp_phoniron/src/config/widgets/spaces/tab_bar_spaces.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DemoHomeNew extends StatefulWidget {
  const DemoHomeNew({super.key});

  @override
  State<DemoHomeNew> createState() => _DemoHomeNewState();
}

class _DemoHomeNewState extends State<DemoHomeNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("phoniron"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(PhosphorIconsLight.list),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: buildDrawer(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Network
              HomeExpansionTile(
                title: "Network",
                backgroundColor: networkBackground,
                collapsedBackgroundColor: networkCollapsedBackground,
                showBadge: true,
                icon: PhosphorIconsLight.treeStructure,
                tabBar: tabBarNetwork(),
              ),
              // Spaces
              HomeExpansionTile(
                title: "Spaces",
                backgroundColor: spacesBackground,
                collapsedBackgroundColor: spacesCollapsedBackground,
                showBadge: false,
                icon: PhosphorIconsLight.planet,
                tabBar: tabBarSpaces(),
              ),
              // Groups
              HomeExpansionTile(
                title: "Groups",
                backgroundColor: groupsBackground,
                collapsedBackgroundColor: groupsCollapsedBackground,
                showBadge: true,
                icon: PhosphorIconsLight.usersThree,
                tabBar: tabBarGroups(),
              ),
              // Markt
              HomeExpansionTile(
                title: "Markt",
                backgroundColor: marktBackground,
                collapsedBackgroundColor: marktCollapsedBackground,
                showBadge: false,
                icon: PhosphorIconsLight.qrCode,
                tabBar: tabBarMarkt(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
