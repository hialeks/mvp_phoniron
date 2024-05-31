import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget tabBarSpaces(BuildContext context, TabController controller) {
  return Column(
    children: [
      TabBar(
        controller: controller,
        tabs: const [
          Tab(icon: Icon(PhosphorIconsLight.dotsThreeOutline)),
          Tab(icon: Icon(PhosphorIconsLight.dotsThreeOutline)),
          Tab(icon: Icon(PhosphorIconsLight.dotsThreeOutline)),
          Tab(icon: Icon(PhosphorIconsLight.dotsThreeOutline)),
          Tab(icon: Icon(PhosphorIconsLight.dotsThreeOutline)),
        ],
      ),
      const SizedBox(height: 3),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: TabBarView(
          controller: controller,
          children: const [
            Center(child: Text("Spaces Tab 1")),
            Center(child: Text("Spaces Tab 2")),
            Center(child: Text("Spaces Tab 3")),
            Center(child: Text("Spaces Tab 4")),
            Center(child: Text("Spaces Tab 5")),
          ],
        ),
      ),
    ],
  );
}
