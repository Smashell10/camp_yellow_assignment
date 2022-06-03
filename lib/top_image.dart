import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  const TopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: mediaQuery.height * 0.34,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.yellow, width: 3),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'asset/battle.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: mediaQuery.height * 0.03,
          child: Container(
            width: mediaQuery.width,
            // height: mediaQuery.height * 0.001,
            decoration: const BoxDecoration(
              color: Colors.black26,
              border: Border(
                  left: BorderSide(width: 3, color: Colors.yellow),
                  right: BorderSide(color: Colors.yellow, width: 3)),
            ),
            // color: Colors.black26,
            child: Column(
              children: [
                Text(
                  'Clan Name: Lorem Ipsum',
                  style: TextStyle(
                      fontSize: mediaQuery.width * 0.058,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: mediaQuery.height * 0.009,
                ),
                Text(
                  '28 members, 5 online',
                  style: TextStyle(
                      fontSize: mediaQuery.width * 0.048, color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
