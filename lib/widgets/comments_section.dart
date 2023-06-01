import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentSectionWidget extends StatelessWidget {
  const CommentSectionWidget(
      {super.key,
      required this.profileImagePath,
      this.verifiedOrNot = false,
      required this.name,
      required this.timeLine,
      required this.commentBody,
      required this.commentPadding,
      required this.profilePadding,
      this.disableComments = false});

  final String profileImagePath;
  final String name;
  final bool? verifiedOrNot;
  final String timeLine;
  final String commentBody;
  final double commentPadding;
  final EdgeInsetsGeometry profilePadding;
  final bool? disableComments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: profilePadding,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(profileImagePath),
                    radius: 25,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    name,
                    style: const TextStyle(
                        color: Color(0xFF1D232B),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  verifiedOrNot == true
                      ? const Icon(
                          Icons.check_circle_rounded,
                          color: Color(0xFF01B99F),
                          size: 20,
                        )
                      : const SizedBox(),
                  Text(
                    timeLine,
                    style: const TextStyle(
                        color: Color(0xFF919EB6),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Icon(
                Icons.more_horiz,
                size: 35,
                color: Color(0xFFAFB9CA),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Container(
            margin: EdgeInsets.only(left: commentPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  commentBody,
                  style: const TextStyle(
                      color: Color(0xFF313B49),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.heart),
                      iconSize: 25,
                      color: const Color(0xFFAFB9CA),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '5',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF919EB6),
                      ),
                    ),
                    const SizedBox(width: 12),
                    disableComments == true
                        ? IconButton(
                            icon: const Icon(Icons.messenger_outline_outlined),
                            iconSize: 30,
                            color: const Color(0xFFAFB9CA),
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          )
                        : const SizedBox(),
                    const SizedBox(width: 4),
                    disableComments == true
                        ? const Text(
                            '5',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF919EB6),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
