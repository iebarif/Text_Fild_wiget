import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      title: "hfso",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('helpful friend social organizatin'),
            backgroundColor: Colors.cyan,
        ),
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _secure= false;

  String text='';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "enter your name",
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                prefixIcon: Icon(Icons.account_circle),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    setState(() {
                      _secure= !_secure;
                    });

                  },
                ),
                errorText: text.isEmpty?'Empty':null
              ),
              keyboardType: TextInputType.text,
              obscureText: _secure,
                obscuringCharacter: '*',
              maxLength: 11,
                // maxLines: 2,
              onChanged: (value){
                text=value;
              },
              onSubmitted: (value){
                setState(() {
                  text=value;
                });
                print (value);
              },
            )
          ],
        ),
      ),
    );
  }
}
