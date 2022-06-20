import 'package:flutter/material.dart';
import 'package:testforwrok/utils/constants.dart';

final List<String> yestCardLogo = [
  AppImages.pret,
  AppImages.flag,
  AppImages.mc,
  AppImages.starbucks,
  AppImages.flag
];
final List<String> yestCardName = [
  "Pret A Manager",
  "Darren Hodghkin",
  "McDonalds",
  "Starbucks",
  "Dave Winklevoss"
];
final List<String> yestCardSum = [
  "- \$55.31 USD",
  "+ \$130.31 USD",
  "- \$55.31 USD",
  "- \$55.31 USD",
  "+ \$300.00 USD"
];

final List<String> satCardLogo = [
  AppImages.virgin,
  AppImages.nike,
];
final List<String> satCardName = [
  "Virgin Megastore",
  "Nike",
];
final List<String> satCardSum = [
  "- \$500.31 USD",
  "- \$500.31 USD",
];

final List<String> thursCardLogo = [
  AppImages.lv,
  AppImages.carrefour,
];
final List<String> thursCardName = [
  "Louis Vuitton",
  "Carrefour",
];
final List<String> thursCardSum = [
  "- \$500.31 USD",
  "- \$500.31 USD",
];

class CardContent extends StatelessWidget {
  const CardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBlockWidget(topBlockText: 'Yesterday'),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: yestCardName.length,
            itemBuilder: (BuildContext context, int index) {
              return CardWidget(
                cardName: yestCardName[index],
                cardLogo: yestCardLogo[index],
                cardSum: yestCardSum[index],
              );
            }),
        TopBlockWidget(topBlockText: 'Sat, Dec 11'),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: satCardName.length,
            itemBuilder: (BuildContext context, int index) {
              return CardWidget(
                cardName: satCardName[index],
                cardLogo: satCardLogo[index],
                cardSum: satCardSum[index],
              );
            }),
        TopBlockWidget(topBlockText: 'Thurs, Dec 9'),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: thursCardName.length,
            itemBuilder: (BuildContext context, int index) {
              return CardWidget(
                cardName: thursCardName[index],
                cardLogo: thursCardLogo[index],
                cardSum: thursCardSum[index],
              );
            })
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  String cardName;
  String cardLogo;
  String cardSum;
  CardWidget({
    required this.cardName,
    required this.cardLogo,
    required this.cardSum,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Text(cardName, style: AppTextStyle.cardTextStyle),
            leading: CircleAvatar(
                backgroundColor: AppColors.mainWhite,
                backgroundImage: AssetImage(cardLogo)),
            subtitle: const Text('12:23'),
            trailing: Text(
              cardSum,
              style: AppTextStyle.cardTextStyle,
            )),
        const Divider()
      ],
    );
  }
}

class TopBlockWidget extends StatelessWidget {
  String topBlockText;
  TopBlockWidget({Key? key, required this.topBlockText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainGrey,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: double.maxFinite,
      child: Text(
        topBlockText,
        style: AppTextStyle.cardTextStyle,
      ),
    );
  }
}
