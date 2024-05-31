import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/styles/styles.dart';
import 'package:mvp_phoniron/src/config/widgets/elements/drawer.dart';
import 'package:mvp_phoniron/src/data/database_repository.dart';
import 'package:mvp_phoniron/src/features/groups/domain/tab_bar_groups.dart';
import 'package:mvp_phoniron/src/features/home/domain/home_expansiontile.dart';
import 'package:mvp_phoniron/src/features/markt/domain/tab_bar_markt.dart';
import 'package:mvp_phoniron/src/features/network/domain/tab_bar_network.dart';
import 'package:mvp_phoniron/src/features/spaces/domain/tab_bar_spaces.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OverviewScreen extends StatefulWidget {
  // Attribute
  final DatabaseRepository databaseRepository;

  // Konstruktor
  const OverviewScreen({super.key, required this.databaseRepository});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen>
    with TickerProviderStateMixin {
  int? _expandedTileIndex;
  late TabController _tabController1;
  late TabController _tabController2;
  late TabController _tabController3;
  late TabController _tabController4;

  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 5, vsync: this);
    _tabController2 = TabController(length: 5, vsync: this);
    _tabController3 = TabController(length: 5, vsync: this);
    _tabController4 = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController1.dispose();
    _tabController2.dispose();
    _tabController3.dispose();
    _tabController4.dispose();
    super.dispose();
  }

  void _onExpansionChanged(bool expanded, int index) {
    setState(() {
      if (expanded) {
        _expandedTileIndex = index;
      } else if (_expandedTileIndex == index) {
        _expandedTileIndex = null;
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
              HomeExpansionTile(
                controller: _tabController1,
                key: UniqueKey(),
                initiallyExpanded: _expandedTileIndex == 0,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 0);
                },
                title: "Network",
                backgroundColor: networkBackground,
                collapsedBackgroundColor: networkCollapsedBackground,
                showBadge: true,
                icon: PhosphorIconsLight.treeStructure,
                tabBar: tabBarNetwork(context, _tabController1),
              ),
              HomeExpansionTile(
                controller: _tabController2,
                key: UniqueKey(),
                initiallyExpanded: _expandedTileIndex == 1,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 1);
                },
                title: "Spaces",
                backgroundColor: spacesBackground,
                collapsedBackgroundColor: spacesCollapsedBackground,
                showBadge: false,
                icon: PhosphorIconsLight.planet,
                tabBar: tabBarSpaces(context, _tabController2),
              ),
              HomeExpansionTile(
                controller: _tabController3,
                key: UniqueKey(),
                initiallyExpanded: _expandedTileIndex == 2,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 2);
                },
                title: "Groups",
                backgroundColor: groupsBackground,
                collapsedBackgroundColor: groupsCollapsedBackground,
                showBadge: true,
                icon: PhosphorIconsLight.usersThree,
                tabBar: tabBarGroups(context, _tabController3),
              ),
              HomeExpansionTile(
                controller: _tabController4,
                key: UniqueKey(),
                initiallyExpanded: _expandedTileIndex == 3,
                onExpansionChanged: (expanded) {
                  _onExpansionChanged(expanded, 3);
                },
                title: "Markt",
                backgroundColor: marktBackground,
                collapsedBackgroundColor: marktCollapsedBackground,
                showBadge: false,
                icon: PhosphorIconsLight.qrCode,
                tabBar: tabBarMarkt(context, _tabController4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
