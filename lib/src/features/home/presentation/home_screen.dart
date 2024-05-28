import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/styles/styles.dart';
import 'package:mvp_phoniron/src/config/widgets/elements/drawer.dart';
import 'package:mvp_phoniron/src/config/widgets/elements/home_expansiontile.dart';
import 'package:mvp_phoniron/src/config/widgets/groups/tab_bar_groups.dart';
import 'package:mvp_phoniron/src/config/widgets/markt/tab_bar_markt.dart';
import 'package:mvp_phoniron/src/config/widgets/network/tab_bar_network.dart';
import 'package:mvp_phoniron/src/config/widgets/spaces/tab_bar_spaces.dart';
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
  UniqueKey item1Key = UniqueKey();
  UniqueKey item2Key = UniqueKey();
  UniqueKey item3Key = UniqueKey();
  UniqueKey item4Key = UniqueKey();

  bool isItem1Expanded = false;
  bool isItem2Expanded = false;
  bool isItem3Expanded = false;
  bool isItem4Expanded = false;

  void _onExpansionChanged(bool expanded, int index) {
    setState(() {
      isItem1Expanded = index == 1 ? expanded : false;
      isItem2Expanded = index == 2 ? expanded : false;
      isItem3Expanded = index == 3 ? expanded : false;
      isItem4Expanded = index == 4 ? expanded : false;

      if (index == 1 && expanded) {
        item2Key = UniqueKey();
        item3Key = UniqueKey();
        item4Key = UniqueKey();
      } else if (index == 2 && expanded) {
        item1Key = UniqueKey();
        item3Key = UniqueKey();
        item4Key = UniqueKey();
      } else if (index == 3 && expanded) {
        item1Key = UniqueKey();
        item2Key = UniqueKey();
        item4Key = UniqueKey();
      } else if (index == 4 && expanded) {
        item1Key = UniqueKey();
        item2Key = UniqueKey();
        item3Key = UniqueKey();
      }
    });
  }

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
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: <Widget>[
              // Network
              HomeExpansionTile(
                key: item1Key,
                initiallyExpanded: isItem1Expanded,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 1);
                },
                title: "Network",
                backgroundColor: networkBackground,
                collapsedBackgroundColor: networkCollapsedBackground,
                showBadge: true,
                icon: PhosphorIconsLight.treeStructure,
                tabBar: tabBarNetwork(),
              ),
              // Spaces
              HomeExpansionTile(
                key: item2Key,
                initiallyExpanded: isItem2Expanded,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 2);
                },
                title: "Spaces",
                backgroundColor: spacesBackground,
                collapsedBackgroundColor: spacesCollapsedBackground,
                showBadge: false,
                icon: PhosphorIconsLight.planet,
                tabBar: tabBarSpaces(),
              ),
              // Groups
              HomeExpansionTile(
                key: item3Key,
                initiallyExpanded: isItem3Expanded,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 3);
                },
                title: "Groups",
                backgroundColor: groupsBackground,
                collapsedBackgroundColor: groupsCollapsedBackground,
                showBadge: true,
                icon: PhosphorIconsLight.usersThree,
                tabBar: tabBarGroups(),
              ),
              // Markt
              HomeExpansionTile(
                key: item4Key,
                initiallyExpanded: isItem4Expanded,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 4);
                },
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
