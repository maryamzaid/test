import 'package:flutter/material.dart';
import 'package:test/login_screen.dart';
import 'package:test/welcomscreen2.dart';
import 'package:test/widget/skip.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  late PageController controller;

  @override
  void initState() {   
    controller=PageController(initialPage: 0);

    // ignore: todo
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                image: const AssetImage('assets/delivery.png'),
                height: MediaQuery.of(context).size.height * .35,
                width: MediaQuery.of(context).size.width * .80,
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
          // ignore: sized_box_for_whitespace
          Container(width: MediaQuery.of(context).size.width*.1,
          height:MediaQuery.of(context).size.width*.05 ,
            child: PageView(controller:controller,
            onPageChanged: (int i){},
            
            
            children: const [
               WelcomScreen2(),
                LoginScreen()
            ],),
          )
          ],
        ),
        const SkipButton(),
      ],
    ));
  }
}
