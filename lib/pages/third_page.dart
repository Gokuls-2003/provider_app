import 'package:counter_app/controller/contoller.dart';
import 'package:counter_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third_page"),
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
                  Provider.of<CountProvider>(context, listen: false).restore();
                },
                child: Icon(Icons.restore)),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Home Page"))
          ],
        ),
      ),
    );
  }
}
