import 'package:flutter/material.dart';
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
          padding: EdgeInsets.all(5),
          shape: CircleBorder(),
        ),
        actions: [
          MaterialButton(
            height: 45,
            minWidth: 51,
            onPressed: () {
              print('back');
            },
            textColor: Colors.white,
            child: Image.asset(AppImages.sendIcon),
            padding: EdgeInsets.all(5),
            shape: CircleBorder(),
          ),
        ],
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
