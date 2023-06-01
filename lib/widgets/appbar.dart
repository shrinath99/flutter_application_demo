import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        color: const Color(0xFF313B49),
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {},
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        '자유톡',
        style: TextStyle(
            color: Color.fromARGB(255, 71, 80, 92),
            fontSize: 18,
            fontWeight: FontWeight.w700),
      ),
      actions: [
        IconButton(
          color: Color(0xFFAFB9CA),
          icon: const Icon(Icons.notifications_none_outlined),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
