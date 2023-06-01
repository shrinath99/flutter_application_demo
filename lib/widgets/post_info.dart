import 'package:flutter/material.dart';

class PostInfoWidget extends StatelessWidget {
  const PostInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~',
          style: TextStyle(
              color: Color(0xFF1D232B),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        Text(
          '혹시 어떤 상품이 제일 괜찮았어?',
          style: TextStyle(
              color: Color(0xFF1D232B),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          '후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 \n제일 재밌었다던데 맞아???',
          style: TextStyle(
              color: Color(0xFF1D232B),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          '올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가\n아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에\n있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
          style: TextStyle(
            color: Color(0xFF1D232B),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
