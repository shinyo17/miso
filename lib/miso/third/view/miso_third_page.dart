import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso/common/data/color.dart';

class MisoThirdPage extends StatelessWidget {
  const MisoThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: misoPrimaryColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const _BackgroundImage(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                SizedBox(height: 64),
                _PromotionText(),
                SizedBox(height: 64),
                _DetailButton(),
                Spacer(),
              ],
            ),
            const _InvitationButton(),
          ],
        ),
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({Key? key}) : super(key: key);

  /// 세 번째 화면 배경 이미지 URL
  final String backgroundImgUrl =
      "https://i.ibb.co/rxzkRTD/146201680-e1b73b36-aa1e-4c2e-8a3a-974c2e06fa9d.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      // 이미지 최대 크기 제한
      alignment: Alignment.bottomCenter,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Image.network(backgroundImgUrl),
    );
  }
}

class _PromotionText extends StatelessWidget {
  const _PromotionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Tip : 10,000원만 bold 처리하기 위해 RichText 위젯 사용
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        // 공통 스타일
        style: TextStyle(
          fontSize: 28,
          height: 1.5, // 줄간격 한 줄의 1.5배
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: "친구 추천할 때마다\n",
          ),
          TextSpan(
            text: "10,000원 ",
            // 개별 스타일
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "할인 쿠폰 지급!",
          ),
        ],
      ),
    );
  }
}

class _DetailButton extends StatelessWidget {
  const _DetailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "자세히 보기",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _InvitationButton extends StatelessWidget {
  const _InvitationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 42,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(64),
            // 그림자
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                // 광원의 위치를 중심(0, 0)보다 위쪽(0, 5133)
                offset: Offset(0, 5),
                spreadRadius: 1,
                blurRadius: 12,
              ),
            ],
          ),
          child: Row(
            children: const [
              Icon(
                Icons.redeem,
                color: misoPrimaryColor,
              ),
              SizedBox(width: 8),
              Text(
                "친구 추천하기",
                style: TextStyle(
                  color: misoPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
