import 'package:bank_/constants/app_textstyle.dart';
import 'package:bank_/data/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: transaction.color),
                child: Image.asset(transaction.avatar),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transaction.month,
                    style: ApptextStyle.LISTTILE_SUB_TITLE,
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.currentBalance,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  Row(
                    children: [
                      transaction.changePercentageIndicator == "up"
                          ? const Icon(
                              FontAwesomeIcons.levelUpAlt,
                              size: 10,
                              color: Colors.green,
                            )
                          : const Icon(
                              FontAwesomeIcons.levelDownAlt,
                              size: 10,
                              color: Colors.red,
                            ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        transaction.changePercentage,
                        style: ApptextStyle.LISTTILE_SUB_TITLE,
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
