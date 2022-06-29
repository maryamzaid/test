import 'package:flutter/material.dart';

class SkipButton  extends StatelessWidget {
  const SkipButton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){} ,
              child: Container(
                height: MediaQuery.of(context).size.height * .04,
                width: MediaQuery.of(context).size.width * .04,
                    alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 223, 207, 207),
                  shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(22.0))),
                  
              child: const Text('skip',),
              ),
            ),
          );
  }
}