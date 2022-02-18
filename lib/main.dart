import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Hongkong',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Hongkong',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.red, Icons.call_end, 'End CALL'),
        _buildButtonColumn(color, Icons.near_me_outlined, 'ROUTE outlined'),
        _buildButtonColumn(Colors.green, Icons.verified_user_sharp, 'verified'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'In a nutshell, Hong Kong is famous for attractions such as Causeway Bay,'
        'The Peak, and Hong Kong Disneyland. A city where skyscrapers meet centuries-old'
        'temples, Hong Kong is also known for its night markets filled with delights like dim sum and egg waffles.',
        softWrap: true,
      ),
    );

    Widget blocks = Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
        //                    <--- top side
        color: Colors.black,
        width: 3.0,
      ))),
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/download.jpg'),
                Text(
                  'Kandersteg, Hongkong',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                Image.asset('images/download.jpg'),
                Text(
                  'Kandersteg, Hongkong',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                Image.asset('images/download.jpg'),
                Text(
                  'Kandersteg, Hongkong',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Example 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example 2'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/hongkong.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            blocks
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
