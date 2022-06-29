import 'package:flutter/material.dart';
import 'package:test/welcomescreen.dart';
import 'package:test/widget/skip.dart';

class WelcomScreen2 extends StatelessWidget {
  const WelcomScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: const [
                Text(
                  '7',
                  style: TextStyle(
                      color: Color.fromARGB(255, 247, 225, 35),
                      fontSize: 30,
                      fontFamily: 'Schyler/sleepwalk.ttf'),
                ),
                Text(
                  'KAVE',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 223, 113, 41),
                      fontFamily: 'Schyler/sleepwalk.ttf'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image(
                image: const AssetImage('assets/buy_object.png'),
                height: MediaQuery.of(context).size.height * .38,
                width: MediaQuery.of(context).size.width * .83,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  ''' Get food delivery to your''',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 25),
                ),
                Text(' doorstep asap',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontSize: 25))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                      'We have young and professional delivery possible to your doorstep',style: TextStyle(fontStyle: FontStyle.italic),),
                      Text('team that will bring your food as soon as'),
                      Text('  possible to your doorstep')
                ],
              ),
            ),
          ],
        ),
        const SkipButton(),
      ],
    ));
  }
}
