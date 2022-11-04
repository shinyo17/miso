import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso/common/data/color.dart';

class MisoFirstPage extends StatelessWidget {
  const MisoFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: misoPrimaryColor,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Tip : 기기 높이의 %로 줘야 각 기기별로 적절한 위치에 배치할 수 있어요.
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                const _ServiceTitle(),
                const SizedBox(height: 38),
                const _ReservationButton(),
                const Spacer(),
                const _ServiceDetailButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ServiceTitle extends StatelessWidget {
  const _ServiceTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "대한민국 1등 홈서비스\n미소를 만나보세요!",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class _ReservationButton extends StatelessWidget {
  const _ReservationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(64),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add, color: misoPrimaryColor),
            const SizedBox(width: 6),
            Text(
              "예약하기",
              style: TextStyle(
                color: misoPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceDetailButton extends StatelessWidget {
  const _ServiceDetailButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white.withOpacity(0.3),
        padding: const EdgeInsets.all(12),
        child: const Text(
          "서비스 상세정보",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
