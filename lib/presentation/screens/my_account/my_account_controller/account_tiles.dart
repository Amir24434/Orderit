import 'package:flutter/material.dart';

class AccountTabs {
  final Icon leadingIcon;
  final String title;
  final Icon trailingIcon;

  const AccountTabs({
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
  });

  static List<AccountTabs> accountTabs = [
    const AccountTabs(
      leadingIcon: Icon(Icons.list_alt_outlined),
      title: 'Transaction',
      trailingIcon: Icon(Icons.keyboard_arrow_right),
    ),
    const AccountTabs(
      leadingIcon: Icon(Icons.heart_broken_outlined),
      title: 'Wishlist',
      trailingIcon: Icon(Icons.keyboard_arrow_right),
    ),
    const AccountTabs(
      leadingIcon: Icon(Icons.bookmark_border_outlined),
      title: 'Saved Address',
      trailingIcon: Icon(Icons.keyboard_arrow_right),
    ),
    const AccountTabs(
      leadingIcon: Icon(Icons.credit_card_outlined),
      title: 'Payment Method',
      trailingIcon: Icon(Icons.keyboard_arrow_right),
    ),
    const AccountTabs(
      leadingIcon: Icon(Icons.notifications_none_outlined),
      title: 'Notification',
      trailingIcon: Icon(Icons.keyboard_arrow_right),
    ),
    const AccountTabs(
      leadingIcon: Icon(Icons.lock_outline_rounded),
      title: 'Security',
      trailingIcon: Icon(Icons.keyboard_arrow_right),
    ),
  ];
}
