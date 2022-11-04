import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso/common/data/color.dart';

class MisoSecondPage extends StatelessWidget {
  const MisoSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 18, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              const _ReservationListTitle(),
              const SizedBox(height: 64),
              const _EmptyReservation(),
              const Divider(color: Colors.grey),
              const Spacer(),
              const _ReservationButon(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReservationListTitle extends StatelessWidget {
  const _ReservationListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "예약내역",
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 32,
      ),
    );
  }
}

class _EmptyReservation extends StatelessWidget {
  const _EmptyReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.error, color: misoPrimaryColor),
        const SizedBox(width: 8),

        /// Tip : 폰의 폭과 관계없이 텍스트를 언제나 한 줄로 보여주기
        const Expanded(
          // row의 남은 영역을 모두 차지하도록
          child: FittedBox(
            // 해당 영역에 적절한 사이즈로 맞추기
            fit: BoxFit.scaleDown, // child 최소 크기를 존중
            child: Text(
              "예약된 서비스가 아직 없어요. 지금 예약해보세요!",
              style: TextStyle(
                fontSize: 100, // 아무리 커도 한 줄로 보여요!
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ReservationButon extends StatelessWidget {
  const _ReservationButon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 58,
        color: misoPrimaryColor,
        alignment: Alignment.center,
        child: const Text(
          "예약하기",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
