import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/config/drawer.dart';

class DemoHomeNew extends StatefulWidget {
  const DemoHomeNew({super.key});

  @override
  State<DemoHomeNew> createState() => _DemoHomeNewState();
}

class _DemoHomeNewState extends State<DemoHomeNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        centerTitle: false,
        title: const Text("phoniron"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu), // Wegen Icon
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: <Widget>[
            ExpansionTile(
              title: Text("Network"),
              // subtitle: Text('Communication at Your Fingertips'),
              backgroundColor: Color.fromARGB(117, 242, 246, 247), // #F7FDFE
              collapsedBackgroundColor: Color(0xffF1F6F7),
              shape: Border.fromBorderSide(BorderSide.none),

              children: <Widget>[
                ListTile(
                  title: Text('Menu'),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ExpansionTile(
              title: Text("Spaces"),
              // subtitle: Text('Communication at Your Fingertips'),
              backgroundColor: Color.fromARGB(117, 237, 240, 255), // #F7FDFE
              collapsedBackgroundColor: Color(0xffEDF0FF),
              shape: Border.fromBorderSide(BorderSide.none),

              children: <Widget>[
                ListTile(
                  title: Text('Menu'),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ExpansionTile(
              title: Text("Groups"),
              // subtitle: Text('Communication at Your Fingertips'),
              backgroundColor: Color.fromARGB(117, 231, 241, 255), // #F7FDFE
              collapsedBackgroundColor: Color(0xffE7F1FF),
              shape: Border.fromBorderSide(BorderSide.none),

              children: <Widget>[
                ListTile(
                  title: Text('Menu'),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ExpansionTile(
              title: Text("Markt"),
              // subtitle: Text('Communication at Your Fingertips'),
              backgroundColor: Color.fromARGB(117, 241, 238, 238), // #F7FDFE
              collapsedBackgroundColor: Color(0xffF1EEEE),
              shape: Border.fromBorderSide(BorderSide.none),

              children: <Widget>[
                ListTile(
                  title: Text('Menu'),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
