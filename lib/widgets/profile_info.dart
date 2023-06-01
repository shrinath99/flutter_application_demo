import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile1.png'),
          radius: 25,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  '안녕 나 응애  ',
                  style: TextStyle(
                      color: Color(0xFF1D232B),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.check_circle_rounded,
                  color: Color(0xFF01B99F),
                  size: 20,
                ),
                Text(
                  ' 1일전',
                  style: TextStyle(
                      color: Color(0xFF919EB6),
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              '163cm . 54kg',
              style: TextStyle(
                  color: Color(0xFF919EB6),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF01B99F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: const Text(
            '팔로우',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
