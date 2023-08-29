import 'package:bank_/constants/app_textstyle.dart';
import 'package:bank_/constants/color_constant.dart';
import 'package:bank_/data/card_data.dart';
import 'package:bank_/data/transaction_data.dart';
import 'package:bank_/widgets/my_cards.dart';
import 'package:bank_/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Bank",
          style: TextStyle(fontFamily: "Poppins", color: kPrimaryColor),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            //radius: 30,
            backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/z/indian-24193195.jpg?w=992"),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                //color: Colors.black,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return MyCard(card: myCards[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: myCards.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recent Transactions",
                style: ApptextStyle.BODY_TEXT,
              ),
              SizedBox(height: 10,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return TransactionCard(
                    transaction:myTransactions[index]
                  );
                }, 
                separatorBuilder:(context, index) {
                  return SizedBox(
                    height: 10,
                  );
                  
                },  
                itemCount: myTransactions.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
