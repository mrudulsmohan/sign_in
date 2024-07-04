import 'package:flutter/material.dart';

class EcommerceAppbar extends StatelessWidget implements PreferredSizeWidget {
  const EcommerceAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      // title: Text('Ecommerce Home'),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
