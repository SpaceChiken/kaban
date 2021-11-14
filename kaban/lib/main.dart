import 'package:flutter/material.dart';

void main() {
  runApp(My());
}


class My extends StatelessWidget {
  const My({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Page extends StatefulWidget {
  Page({Key key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: size.width,
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: size.width*0.8,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.bug_report_sharp),
                  labelText: "Введите текст сообщения",
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(30)),
                  ) 
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
