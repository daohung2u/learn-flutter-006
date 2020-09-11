import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/my_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmi, @required this.result, @required this.hint});

  final String bmi;
  final String result;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Your Result",
                style: TextStyle(fontSize: valueSize),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCard(
              color: cardActiveColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'NORMAL',
                      style: TextStyle(
                          color: Colors.green.shade300, fontSize: headerSize),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '22.1',
                      style: TextStyle(fontSize: valueSize),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Normal BMI range',
                      style: TextStyle(
                          color: textMutedColor, fontSize: headerSize),
                    ),
                    Text(
                      '18.5 -25 kg/m2',
                      style: TextStyle(fontSize: headerSize),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'You have a normal body weight. Good Job!',
                      style: TextStyle(fontSize: headerSize),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            title: "RE-CALCULATOR",
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
