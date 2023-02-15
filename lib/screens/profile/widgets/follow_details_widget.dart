import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class FollowDetail extends StatelessWidget {
  const FollowDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            Text(
              '248',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: mainColor),
            ),
            Text('Posts',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 1.0,
          color: Colors.grey.withOpacity(0.5),
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: const [
            Text(
              '35',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: mainColor),
            ),
            Text('Followers',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 1.0,
          color: Colors.grey.withOpacity(0.5),
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: const [
            Text(
              '287',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: mainColor),
            ),
            Text('Following',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
