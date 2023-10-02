import 'package:flutter/material.dart';

enum ENavigationPossibilities {
  find(
    Icons.store_outlined,
    Icons.store,
  ),

  collection(
    Icons.collections_bookmark_outlined,
    Icons.collections_bookmark_rounded,
  ),
  generateText(
    Icons.generating_tokens_outlined,
    Icons.generating_tokens,
  ),

  createMustache(
    Icons.add_box_outlined,
    Icons.add_box_rounded,
  ),

  account(
    Icons.person_outline_rounded,
    Icons.person_rounded,
  ),

  login(
    Icons.key,
    Icons.key_outlined,
  ),

  settings(
    Icons.settings_outlined,
    Icons.settings,
  ),

  becamePremium(
    Icons.star_outline_rounded,
    Icons.star_rounded,
  ),
  ;

  final IconData selectedIcon;
  final IconData unselectedIcon;
  const ENavigationPossibilities(
    this.unselectedIcon,
    this.selectedIcon,
  );
}
