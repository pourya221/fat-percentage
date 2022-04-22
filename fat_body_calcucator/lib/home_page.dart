import 'package:fat_body_calcucator/second_screnn/Bmi_secondscreen.dart';
import 'package:fat_body_calcucator/second_screnn/man_page.dart';
import 'package:fat_body_calcucator/second_screnn/woman_page.dart';
import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'درصد چربی رو بگیر',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: bodyHomepage(),
    );
  }
}

class bodyHomepage extends StatefulWidget {
  bodyHomepage({Key? key}) : super(key: key);

  @override
  State<bodyHomepage> createState() => _bodyHomepageState();
}

void navigat(BuildContext context, Widget inpage) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (BuildContext context) => inpage),
  );
}

class _bodyHomepageState extends State<bodyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 35,
        ),
        Row(
          children: [
            Expanded(
                child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(50, 130),
                  elevation: 40,
                  primary: Colors.redAccent,
                  side: BorderSide(width: 4, color: Colors.greenAccent)),
              onPressed: () {
                navigat(context, womanpage());
              },
              child: Text(
                'زن',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )),
            Expanded(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(50, 130),
                    elevation: 40,
                    primary: Colors.blueGrey,
                    side: BorderSide(width: 4, color: Colors.yellow)),
                onPressed: () {
                  navigat(context, manpage());
                },
                child: Text(
                  'مرد',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Image(
                height: 400,
                image: AssetImage(
                  'images/2.jpg',
                ),
              ),
            ),
            Expanded(child: Image(image: AssetImage('images/3.jpg')))
          ],
        ),
        OutlinedButton(style: OutlinedButton.styleFrom(
          minimumSize: Size(100, 70)
        ),onPressed: (){
         navigat(context, bodypage());
        }, child: Text('رو بگیرBmi',style: TextStyle(
          fontSize: 30
        ),))
      ],
    );
  }
}
