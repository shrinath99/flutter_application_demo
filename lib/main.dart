import 'package:flutter/material.dart';
import 'package:flutter_application_demo/widgets/appbar.dart';
import 'package:flutter_application_demo/widgets/carousal.dart';
import 'package:flutter_application_demo/widgets/chip.dart';
import 'package:flutter_application_demo/widgets/comment_save_like.dart';
import 'package:flutter_application_demo/widgets/comments_section.dart';
import 'package:flutter_application_demo/widgets/post_info.dart';
import 'package:flutter_application_demo/widgets/profile_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> images = [
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://media.istockphoto.com/id/1297349747/photo/hot-air-balloons-flying-over-the-botan-canyon-in-turkey.jpg?s=612x612&w=0&k=20&c=kt8-RRzCDunpxgKFMBBjZ6jSteetNhhSxHZFvHQ0hNU=',
    'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8=',
    'https://media.istockphoto.com/id/1202227531/photo/beautiful-emerald-colored-glacial-rivers-of-iceland-taken-from-a-helicopter.jpg?s=612x612&w=0&k=20&c=Ssi0UDmtNGF89mSpq_t7f-XChvV0_RO8xO5p5xvz35Y=',
    'https://media.istockphoto.com/id/583809524/photo/alberta-wilderness-near-banff.jpg?s=612x612&w=0&k=20&c=hiI3ib9ibDxAgqEZEH09EO3JOw94v5xh6hzcuXGhO-M='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileInfoWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                      style: TextStyle(
                          color: Color(0xFF1D232B),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const PostInfoWidget(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        ChipWidget(title: '#2023'),
                        SizedBox(width: 6),
                        ChipWidget(title: '#TODAYISMONDAY'),
                        SizedBox(width: 6),
                        ChipWidget(title: '#TOP'),
                        SizedBox(width: 6),
                        ChipWidget(title: '#POPS!'),
                      ],
                    ),
                    Row(
                      children: const [
                        ChipWidget(title: '#WOW'),
                        SizedBox(width: 6),
                        ChipWidget(title: '#ROW'),
                      ],
                    )
                  ],
                ),
              ),
              CarousalWidget(
                images: images,
              ),
              const SizedBox(
                height: 15,
              ),
              const CommentSaveLikeWidget(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  height: 4,
                  thickness: 2,
                  color: Color(0xFFF7F8FA),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const CommentSectionWidget(
                commentBody:
                    '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭\n우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 \n아니잖 아요?! 그런 제가 기꺼이 도전해봤는데 생각보다\n 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니\n 꼭 봐주세용~!',
                name: '안녕 나 응애  ',
                commentPadding: 58,
                profileImagePath: 'assets/images/profile1.png',
                timeLine: ' 1일전',
                verifiedOrNot: true,
                profilePadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                disableComments: true,
              ),
              const CommentSectionWidget(
                commentBody: '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                name: 'ㅇㅅㅇ',
                commentPadding: 55,
                profileImagePath: 'assets/images/profile2.png',
                timeLine: ' 1일전',
                profilePadding: EdgeInsets.fromLTRB(70, 5, 16, 0),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 2,
                color: Color(0xFFF7F8FA),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.image,
                      color: Color(0xFF919EB6),
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '댓글을 남겨주세요.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFAFB9CA),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '등록',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF919EB6),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
