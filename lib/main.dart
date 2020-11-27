import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
              padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: <Widget>[
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: 'C'
              ),
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '+/-'
              ),
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '%'
              ),
              CalculatorBotton.Icon(
                  backgroundColor: Theme.of(context).primaryColorDark,
                  foregroundColor: Theme.of(context).primaryColorLight,
                  text: 'Backscpace',
                  icon: Icons.backspace,
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '7'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '8'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '9'
              ),
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorDark,
                  foregroundColor: Theme.of(context).primaryColorLight,
                  text: '/'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '4'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '5'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '6'
              ),
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorDark,
                  foregroundColor: Theme.of(context).primaryColorLight,
                  text: 'X'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '1'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '2'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '3'
              ),
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorDark,
                  foregroundColor: Theme.of(context).primaryColorLight,
                  text: '-'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '0'
              ),
              CalculatorBotton(
                  backgroundColor: Colors.white,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '.'
              ),
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  foregroundColor: Theme.of(context).primaryColorDark,
                  text: '='
              ),
              CalculatorBotton(
                  backgroundColor: Theme.of(context).primaryColorDark,
                  foregroundColor: Theme.of(context).primaryColorLight,
                  text:  '+')

            ],
          ),
        ],
      ),
    );
  }
}

class CalculatorBotton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData icon;
  CalculatorBotton({
      @required this.backgroundColor,
      @required this.foregroundColor,
      @required this.text,
  });
  CalculatorBotton.Icon({
    @required this.backgroundColor,
    @required this.foregroundColor,
    @required this.text,
    @required this.icon

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: icon == null
            ? Text(
          text,
          style: Theme.of(context)
          .textTheme.headline4.copyWith(color: foregroundColor),
        ) : Icon(
          icon,
          color: foregroundColor,
        )
      ),
    );
  }
}
