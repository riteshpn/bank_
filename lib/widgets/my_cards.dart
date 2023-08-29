import 'package:bank_/constants/app_textstyle.dart';
import 'package:bank_/data/card_data.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final CardModel card;

  const MyCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 330,
      decoration: BoxDecoration(
          color: card.cardColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CARD NAME",
                      style: ApptextStyle.MY_CARD_TITLE,
                    ),
                    Text(
                      card.cardHolderName,
                      style: ApptextStyle.MY_CARD_SUBTITLE,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  card.cardNumber,
                  style: ApptextStyle.MY_CARD_SUBTITLE,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EXP DATE",
                          style: ApptextStyle.MY_CARD_TITLE,
                        ),
                        Text(
                          card.expDate,
                          style: ApptextStyle.MY_CARD_SUBTITLE,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "CVV NUMBER",
                          style: ApptextStyle.MY_CARD_TITLE,
                        ),
                        Text(
                          card.cvv,
                          style: ApptextStyle.MY_CARD_SUBTITLE,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15, top: 15),
                height: 50,
                width: 50,
                child: Image.asset('assets/icons/mcard.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
