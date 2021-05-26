import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List quotes = [
    "'The purpose of our lives is to be happy.'",
    "Life is what happens when you’re busy making other plans.",
    "Get busy living or get busy dying.",
    "You only live once, but if you do it right, once is enough.",
    "Many of life’s failures are people who did not realize how close they were to success when they gave up."
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)
                    ),
                    child: Center(
                        child: Text(
                            quotes[_index],
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontStyle: FontStyle.italic,
                            fontSize: 25
                          ),
                        )
                    )
                ),
              ),
            ),
            Divider(thickness: 2.3,),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.green.shade800,
                  icon: Icon(
                      Icons.wb_sunny,
                      color: Colors.white,),
                  label: Text(
                      "Inspire me!",
                      style: TextStyle(
                        fontSize: 18.8,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                  )
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
  void _showQuote() {
    setState(() {
      _index++;
      if(quotes.length == _index){
        _index = 0;
      }
    });
  }
}


