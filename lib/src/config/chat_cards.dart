import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChatCard01 extends StatelessWidget {
  const ChatCard01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const badges.Badge(
          showBadge: true,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '7',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar5.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Frank Menke"),
            Row(
              children: [
                const Icon(PhosphorIconsLight.buildings),
                const SizedBox(width: 24),
                Image.asset(
                  'assets/country_flags/germany.png',
                  height: 16,
                ),
              ],
            ),
          ],
        ),
        subtitle: const Text("Typing..."),
      ),
    );
  }
}
