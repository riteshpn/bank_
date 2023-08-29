import 'package:bank_/constants/app_textstyle.dart';
import 'package:bank_/data/card_data.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final CardModel card;

  const MyCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
          color: card.cardColor, borderRadius: BorderRadius.circular(10)),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CARD NAME",
                style: ApptextStyle.MY_CARD_TITLE,
              )
            ],
          )
        ],
      ),
    );
  }
}
