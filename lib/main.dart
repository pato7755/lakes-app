import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lakes in Ghana'),
        ),
        body: const Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ImageView(),
            TitleSection(),
            ButtonSection(),
            DescriptionSection()
          ],
        )
      )
    );
  }
}

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/lake.jpeg'),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    // var textStyle = TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold;
    return Container(
        padding: const EdgeInsets.all(20),
        child: const Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Volta',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Akosombo, Ghana',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, ),
            Text('41')
          ],
        ));
  }
}

class Section extends StatelessWidget {
  const Section({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lake Volta',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Akosombo, Ghana',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
        ),

      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, const Icon(Icons.call, color: Colors.blue), 'CALL'),
          _buildButtonColumn(Colors.blue, const Icon(Icons.near_me, color: Colors.blue), 'ROUTE'),
          _buildButtonColumn(Colors.blue, const Icon(Icons.share, color: Colors.blue), 'SHARE'),
        ],
      ),
    );
  }
}

Column _buildButtonColumn(Color color, Icon icon, String label ) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      icon,
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
    ]
  );
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
      child: const Text('The Volta River is the main river system in '
          'the West African country of Ghana. It flows south into '
          'Ghana from the Bobo-Dioulasso highlands of Burkina Faso. '
          'The main parts of the river are the Black Volta, the '
          'White Volta, and the Red Volta. In the northwest, the '
          'Black Volta forms the international borders between the '
          'Ivory Coast, Ghana, and Burkina Faso.',
      softWrap: true,)
      );
  }
}

class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 30);
  }
}
