import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const build 재실행되지 않는다.
          const TestWidget(label: 'test1'),
          const TestWidget(label: 'test2'),
          ElevatedButton(onPressed: () {
            setState(() {});
          }, child: const Text('빌드!'))
        ],
      ),
    ));
  }
}

class TestWidget extends StatelessWidget {
  final String label;

  const TestWidget({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('$label build 실행');
    return Container(
      child: Text(label),
    );
  }
}
