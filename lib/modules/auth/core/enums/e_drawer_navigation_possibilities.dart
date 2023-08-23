import 'package:flutter/material.dart' show IconData, Icons;

enum EDrawerNavigationPossibilities {
  home(
    Icons.home_outlined,
    Icons.home,
    'Home',
    'Home',
  ),
  find(
    Icons.store_outlined,
    Icons.store,
    'Find mustaches',
    'Find',
  ),
  generateText(
    Icons.generating_tokens_outlined,
    Icons.generating_tokens,
    'Generate text',
    'Generate',
  ),
  createMustache(
    Icons.add_box_outlined,
    Icons.add_box_rounded,
    'Create mustache',
    'Create',
  ),
  account(
    Icons.person_outline_rounded,
    Icons.person_rounded,
    'User account',
    'Account',
  ),
  becamePremium(
    Icons.star_outline_rounded,
    Icons.star_rounded,
    'Became premium',
    'Premium',
  ),
  settings(
    Icons.settings_outlined,
    Icons.settings,
    'Configuration',
    'Configs',
  ),
  logOut(
    Icons.logout_outlined,
    Icons.logout,
    'Log out',
    'Log out',
  );

  final IconData selectedIcon;
  final IconData unselectedIcon;
  final String label;
  final String shortLabel;
  const EDrawerNavigationPossibilities(
    this.unselectedIcon,
    this.selectedIcon,
    this.label,
    this.shortLabel,
  );
}
