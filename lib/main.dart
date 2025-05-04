import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int number = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assset/images/muslimCat.jpeg"),
                        radius: 50,
                      ),
                    ),
                    Text("بۆ دایکان", style: TextStyle(fontFamily: "kurdishfont", fontSize: 22))
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number = 0;
                    });
                  },
                  child: Text("سفر کردنەوەی ژمارە", style: TextStyle(fontFamily: "kurdishfont", fontSize: 13)),
                )
              ],
            ),
            Spacer(flex: 1),
            Image.asset("assset/images/muslimCat2.png"),
            Container(
              height: 200,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [Color(0xffaa81b0), Color(0xff673f73)]),
              ),
              child: Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 70,
                  fontFamily: "kurdishfont",
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
            ),
            Text(
              "بزانین ئەتوانیت ١٠٠ زیکر بکەی ئەمڕۆ😉؛",
              style: TextStyle(fontFamily: "kurdishfont", fontSize: 20, color: Colors.teal),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 20),
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color(0xffaa81b0),
          onPressed: () {
            setState(() {
              if (number < 100) {
                number++;
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Center(
                      child: Text(
                        "بژیت ئەنجامت دا",
                        style: TextStyle(fontFamily: "kurdishfont")
                      )
                    )
                  )
                );
              }
            });
          },
          child: Icon(Icons.add, size: 20, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}