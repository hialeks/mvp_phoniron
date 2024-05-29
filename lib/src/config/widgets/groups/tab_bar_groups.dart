import 'package:flutter/material.dart';

Widget tabBarGroups(BuildContext context) {
  return DefaultTabController(
    length: 0,
    child: Column(
      children: [
        const TabBar(
          tabs: [],
        ),
        const SizedBox(height: 3),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2, //oder px,
          child: const TabBarView(
            children: [],
          ),
        ),
      ],
    ),
  );
}
