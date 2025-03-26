import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = 'It\'s My First Day at Flutter University!';

  void changeText() {
    setState(() {
      displayText = 'I am enjoying Flutter!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Am Giwa Yusuf')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://media.licdn.com/dms/image/v2/D560BAQHx-0l-j2eMUw/company-logo_200_200/company-logo_200_200/0/1664908609726?e=2147483647&v=beta&t=g4orQ9e-pBZ5UihoiaujAY5yZNyvO7UqQQCVVeJ1IXQ',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(displayText),
            SizedBox(height: 20),
            ElevatedButton(onPressed: changeText, child: Text('Change Text')),
          ],
        ),
      ),
    );
  }
}
