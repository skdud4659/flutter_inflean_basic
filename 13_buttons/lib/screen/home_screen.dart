import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('button')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.black
                    ),
                    foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white;
                        }
                        return Colors.red;
                      }
                    )
                  ),
                  child: Text('ButtonStyle')
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.red,
                    shadowColor: Colors.green,
                    elevation: 10,
                    textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    padding: EdgeInsets.all(32.0),
                    side: BorderSide(
                      color: Colors.black,
                      width: 4,
                    )),
                child: Text('ElevatedButton'),
              ),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.green,
                      side: BorderSide(
                        color: Colors.green,
                      )),
                  child: Text('OutlineButton')),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(color: Colors.blue)
                  ),
                  child: Text('TextButton'))
            ],
          ),
        ));
  }
}
