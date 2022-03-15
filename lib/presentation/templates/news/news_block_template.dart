import 'package:flutter/material.dart';

class NewsBlockTemplate extends StatelessWidget {
  const NewsBlockTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image(
              image: NetworkImage(
                  'https://media.istockphoto.com/photos/female-student-picture-id1264296727?b=1&k=20&m=1264296727&s=170667a&w=0&h=uGwjyDSjSqIsq9jCwnCHpQDtnDkNIU3Jjoq8cTN8Pss='),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: ListTile(
            title: const Text(
              'Правительство выделило 20 000 грантов на научно-технические направления',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                color: Colors.black,
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: const Text(
                '14:34',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
