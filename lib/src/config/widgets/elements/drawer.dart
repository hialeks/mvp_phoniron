import 'package:flutter/material.dart';
import 'package:mvp_phoniron/src/features/authentication/presentation/faq_screen.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      //padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            //color: Color(0xff1b828c),
            color: Color.fromARGB(255, 27, 131, 140),
          ),
          child: Text(
            'phoniron',
            style: TextStyle(
                color: Colors.white, fontSize: 27, fontWeight: FontWeight.w500),
          ),
        ),
        ListTile(
          leading: const Icon(PhosphorIconsLight.x),
          title: const Text('Exit App'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        const Divider(
          endIndent: 100,
          indent: 10,
        ),
        ListTile(
          leading: const Icon(PhosphorIconsLight.question),
          title: const Text("FAQ"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FaqScreen(),
              ),
            );
            // Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(PhosphorIconsLight.newspaper),
          title: const Text("What's new?"),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(PhosphorIconsLight.chartLine),
          title: const Text('Statistics'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(PhosphorIconsLight.clockClockwise),
          title: const Text('Update'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(PhosphorIconsLight.info),
          title: const Text('About'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        const Divider(
          endIndent: 100,
          indent: 10,
        ),
        ListTile(
          leading: const Icon(PhosphorIconsLight.signOut),
          title: const Text('Log Out'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
