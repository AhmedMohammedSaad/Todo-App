import 'package:flutter/material.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Hi Eng_Ahmed Saad ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
              'images/IMG_20231227_114458_156 (1)~3.png',
            ),
          )
        ],
      ),
    );
  }
}
