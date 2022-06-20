import 'package:flutter/material.dart';
import 'package:testforwrok/ui/widget/card_widget.dart';
import 'package:testforwrok/ui/widget/header_widget.dart';
import 'package:testforwrok/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
          height: 45,
          minWidth: 51,
          onPressed: () {
            print('back');
          },
          textColor: Colors.white,
          child: Icon(Icons.arrow_back),
          padding: const  EdgeInsets.all(5),
          shape: const  CircleBorder(),
        ),
        actions: [
          MaterialButton(
            height: 45,
            minWidth: 51,
            onPressed: () {
              print('send');
            },
            textColor: Colors.white,
            child: Image.asset(AppImages.sendIcon,
                width: 20, height: 20, fit: BoxFit.contain),
            padding: EdgeInsets.all(5),
            shape: CircleBorder(),
          ),
        ],
      ),
      body: ListView(
        children: const [HeaderWidget(), CardContent()],
      ),
    );
  }
}
