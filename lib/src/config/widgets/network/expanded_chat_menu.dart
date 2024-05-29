import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

//! Alles wird wieder über ListView.builder gemacht
//! Alles wird wieder über ListView.builder gemacht
//! Alles wird wieder über ListView.builder gemacht

class ChatCard01 extends StatefulWidget {
  const ChatCard01({super.key});

  @override
  State<ChatCard01> createState() => _ChatCard01State();
}

class _ChatCard01State extends State<ChatCard01> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: true,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '3',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar6.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Anna Müller"),
            Row(
              children: [
                const Icon(PhosphorIconsLight.tree),
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

class ChatCard02 extends StatelessWidget {
  const ChatCard02({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
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
                const Icon(PhosphorIconsLight.tree),
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

class ChatCard03 extends StatelessWidget {
  const ChatCard03({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
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

class ChatCard04 extends StatelessWidget {
  const ChatCard04({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: false,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar7.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Camille Dubois"),
            Row(
              children: [
                const Icon(PhosphorIconsLight.usersFour),
                const SizedBox(width: 24),
                Image.asset(
                  'assets/country_flags/france.png',
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

class ChatCard05 extends StatelessWidget {
  const ChatCard05({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: true,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar10.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Jonas Wagner"),
            Row(
              children: [
                const Icon(PhosphorIconsLight.usersFour),
                const SizedBox(width: 24),
                Image.asset(
                  'assets/country_flags/germany.png',
                  height: 16,
                ),
              ],
            ),
          ],
        ),
        subtitle: const Text("Sent a post"),
      ),
    );
  }
}

class ChatCard06 extends StatelessWidget {
  const ChatCard06({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: true,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '2',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar3.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Mette Hansen"),
            Row(
              children: [
                const Icon(PhosphorIconsLight.buildings),
                const SizedBox(width: 24),
                Image.asset(
                  'assets/country_flags/denmark.png',
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

class ChatCard07 extends StatelessWidget {
  const ChatCard07({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: true,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '45',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar15.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Αλεξάνδρα"),
            Row(
              children: [
                const Icon(PhosphorIconsLight.usersFour),
                const SizedBox(width: 24),
                Image.asset(
                  'assets/country_flags/greece.png',
                  height: 16,
                ),
              ],
            ),
          ],
        ),
        subtitle: const Text("Liked a message"),
      ),
    );
  }
}

class ChatCard08 extends StatelessWidget {
  const ChatCard08({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: true,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar4.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Lukas Schmidt"),
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

class ChatCard09 extends StatelessWidget {
  const ChatCard09({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: true,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar8.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Sophie Weber"),
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
        subtitle: const Text("Uploaded a photo"),
      ),
    );
  }
}

class ChatCard10 extends StatelessWidget {
  const ChatCard10({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const badges.Badge(
          showBadge: false,
          badgeStyle:
              badges.BadgeStyle(badgeColor: Color(0xff1C828C)), // #1C828C
          badgeContent: Text(
            '7',
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/avatars/avatar.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Giuseppe Rossi"),
            Row(
              children: [
                const Icon(PhosphorIconsLight.usersFour),
                const SizedBox(width: 24),
                Image.asset(
                  'assets/country_flags/italy.png',
                  height: 16,
                ),
              ],
            ),
          ],
        ),
        subtitle: const Text("Sent a post"),
      ),
    );
  }
}

class ExpandedChatMenu extends StatelessWidget {
  const ExpandedChatMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
