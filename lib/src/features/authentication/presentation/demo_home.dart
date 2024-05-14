import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/drawer.dart';
import 'package:mvp_phoniron/src/config/tab_bar_network.dart';
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
              icon: const Icon(Icons.menu),
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
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            ExpansionTile(
              title: const Text("Network"),
              backgroundColor: const Color.fromARGB(117, 242, 246, 247),
              collapsedBackgroundColor: const Color(0xffF1F6F7),
              shape: const Border.fromBorderSide(BorderSide.none),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(0, 255, 255, 255),
                child: Icon(PhosphorIconsLight.treeStructure),
              ),
              children: <Widget>[
                tabBarNetwork(),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const ExpansionTile(
              title: Text("Spaces"),
              backgroundColor: Color.fromARGB(117, 237, 240, 255),
              collapsedBackgroundColor: Color(0xffEDF0FF),
              shape: Border.fromBorderSide(BorderSide.none),
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(0, 255, 255, 255),
                child: Icon(PhosphorIconsLight.planet),
              ),
              children: <Widget>[
                ListTile(
                  title: Text('Menu'),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const ExpansionTile(
              title: Text("Groups"),
              backgroundColor: Color.fromARGB(117, 231, 241, 255),
              collapsedBackgroundColor: Color(0xffE7F1FF),
              shape: Border.fromBorderSide(BorderSide.none),
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(0, 255, 255, 255),
                child: Icon(PhosphorIconsLight.usersThree),
              ),
              children: <Widget>[
                ListTile(
                  title: Text('Menu'),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const ExpansionTile(
              title: Text("Markt"),
              backgroundColor: Color.fromARGB(117, 241, 238, 238),
              collapsedBackgroundColor: Color(0xffF1EEEE),
              shape: Border.fromBorderSide(BorderSide.none),
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(0, 255, 255, 255),
                child: Icon(PhosphorIconsLight.scan),
              ),
              children: <Widget>[
                ListTile(
                  title: Text('Menu'),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
