import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final String assetPath;
  final VoidCallback onPressed;

  const SocialIconButton({
    super.key,
    required this.assetPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        assetPath,
        width: 25,
        height: 25,
      ),
      onPressed: onPressed,
    );
  }
}

class SocialIconsRow extends StatelessWidget {
  final List<SocialIconButton> icons;

  const SocialIconsRow({
    super.key,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < icons.length; i++) ...[
          icons[i],
          if (i < icons.length - 1) const SizedBox(width: 30),
        ]
      ],
    );
  }
}

class LoginProviders extends StatelessWidget {
  const LoginProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SocialIconsRow(
        icons: [
          SocialIconButton(
            assetPath: 'assets/app_elements/google_icon.png',
            onPressed: () {
              // Handle Google icon press
            },
          ),
          SocialIconButton(
            assetPath: 'assets/app_elements/apple_icon.png',
            onPressed: () {
              // Handle Apple icon press
            },
          ),
          SocialIconButton(
            assetPath: 'assets/app_elements/linkedin_icon.png',
            onPressed: () {
              // Handle LinkedIn icon press
            },
          ),
          SocialIconButton(
            assetPath: 'assets/app_elements/xing_icon.png',
            onPressed: () {
              // Handle Xing icon press
            },
          ),
        ],
      ),
    );
  }
}
