import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentSaveLikeWidget extends StatelessWidget {
  const CommentSaveLikeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.heart),
            iconSize: 30,
            color: const Color(0xFFAFB9CA),
            onPressed: () {},
          ),
          const Text(
            '5',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF919EB6),
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            icon: const Icon(Icons.messenger_outline_outlined),
            iconSize: 30,
            color: const Color(0xFFAFB9CA),
            onPressed: () {},
          ),
          const Text(
            '5',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF919EB6),
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            icon: const Icon(Icons.bookmark_border_outlined),
            iconSize: 35,
            color: const Color(0xFFAFB9CA),
            onPressed: () {},
          ),
          const SizedBox(width: 14),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 35,
            color: const Color(0xFFAFB9CA),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
