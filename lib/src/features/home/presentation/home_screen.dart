import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/styles/styles.dart';
import 'package:mvp_phoniron/src/config/widgets/drawer.dart';
import 'package:mvp_phoniron/src/config/widgets/home_expansiontile.dart';
import 'package:mvp_phoniron/src/config/widgets/tab_bar_groups.dart';
import 'package:mvp_phoniron/src/config/widgets/tab_bar_markt.dart';
import 'package:mvp_phoniron/src/config/widgets/tab_bar_network.dart';
import 'package:mvp_phoniron/src/config/widgets/tab_bar_spaces.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OverviewScreen extends StatefulWidget {
  // Attribute
  final DatabaseRepository databaseRepository;

  // Konstruktor
  const OverviewScreen({super.key, required this.databaseRepository});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
