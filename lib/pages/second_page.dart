import 'package:counter_app/controller/contoller.dart';
import 'package:counter_app/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<CountProvider>(context, listen: true)
                  .count
                  .toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<CountProvider>(context, listen: false)
                      .decrement();
                },
                child: Icon(Icons.remove)),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              },
              child: Text("Thrid Page"),
            ),
          ],
        ),
      ),
    );
  }
}
