import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: const [
                Image(image: AssetImage('assets/about.png')),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'About',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
                'Culpa ea qui nisi laboris dolore aliquip ipsum eu laboris consequat exercitation minim aute ex. Reprehenderit veniam laborum consequat labore veniam. Ipsum irure commodo amet officia cillum veniam. Sint ut nulla est tempor proident. Reprehenderit velit aute cupidatat consequat in. Ipsum excepteur nulla nisi sunt enim nulla quis. Aliqua pariatur ipsum aute aliquip officia culpa quis eu exercitation commodo quis enim.'),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(Icons.coffee_rounded),
                //Image(image: AssetImage('assets/about.png')),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Preferences & Interests',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text('Acting, Watching ,Movies , Drama , Mime'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),

            Row(
              children: const [
                Icon(Icons.edit),
                //Image(image: AssetImage('assets/about.png')),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Attributes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
