import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/pages/second_versus_page.dart';
import 'package:king_of_mountain/ui/widgets/action_button.dart';
import 'package:king_of_mountain/ui/widgets/avenger_Info.dart';
import 'package:king_of_mountain/ui/widgets/versus_back_gradient.dart';
import '../../utilities/avengers_images.dart';

class FirstVsPage extends StatelessWidget {
  const FirstVsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  VsBackGradient(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AvengerInfo(
                        name: 'Batman',
                        imagePath: AvengersImages.batman,
                      ),
                      Text(
                        'vs'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AvengerInfo(
                        name: 'Black Panther',
                        imagePath: AvengersImages.blackPanther,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ActionButton(
              onTap: () {
                print('tapped 1');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondVsPage(),
                  ),
                );
              },
              buttonText: 'next versus',
            ),
          ],
        ),
      ),
    );
  }
}
