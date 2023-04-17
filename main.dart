import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboardingPage(),
    );
  }
}

class onboardingPage extends StatelessWidget {
  const onboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              title: "환영합니다!",
              bodyWidget: Text("츠유는 최고다."),
              image: Padding(
                padding: EdgeInsets.all(30),
                child: Image.network(
                    "https://i.scdn.co/image/ab67616d0000b273860e85875b607515182b5ab9"),
              ),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  bodyTextStyle:
                      TextStyle(color: Colors.blueGrey, fontSize: 20))),
          PageViewModel(
              title: "cd에 30만원 쓴 흑우쉑",
              bodyWidget: Text("오히려좋아"),
              image: Padding(
                padding: EdgeInsets.all(30),
                child: Image.network(
                    "https://i1.sndcdn.com/artworks-fhylisvMRWH4yuNH-8sffHg-t500x500.jpg"),
              ),
              decoration: PageDecoration(
                  titleTextStyle: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  bodyTextStyle:
                      TextStyle(color: Colors.blueGrey, fontSize: 20))),
        ],
        next: Text(
          "다음",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        done: Text(
          "완료",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        onDone: () {},
      ),
    );
  }
}
