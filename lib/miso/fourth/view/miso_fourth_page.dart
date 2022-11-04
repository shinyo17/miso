import 'package:flutter/material.dart';

class MisoFourthPage extends StatelessWidget {
  const MisoFourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        /// Tip: 작은 화면에서 넘친다면 스크롤 가능하도록
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 62,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _MyPageText(),
              SizedBox(height: 16),
              _PhoneNumber(),
              SizedBox(height: 32),
              _MyPageButton(icon: Icons.home_outlined, buttonText: "주소 관리"),
              _MyPageButton(
                  icon: Icons.credit_card_outlined, buttonText: "결제 수단 관리"),
              _MyPageButton(
                  icon: Icons.volume_mute_outlined, buttonText: "공지사항 관리"),
              _MyPageButton(icon: Icons.help_outline, buttonText: "문의사항"),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyPageButton extends StatelessWidget {
  const _MyPageButton({
    Key? key,
    required this.icon,
    required this.buttonText,
  }) : super(key: key);

  final IconData icon;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(icon, color: Colors.black),
      title: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _MyPageText extends StatelessWidget {
  const _MyPageText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "나의 정보",
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 32,
      ),
    );
  }
}

class _PhoneNumber extends StatelessWidget {
  const _PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "010-9999-9999",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
