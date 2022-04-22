import 'package:flutter/material.dart';

class womanpage extends StatefulWidget {
  womanpage({Key? key}) : super(key: key);

  @override
  State<womanpage> createState() => _womanpageState();
}

final getcontrollerage = TextEditingController();
final getcotrollerbmi = TextEditingController();
double resone = 0;

class _womanpageState extends State<womanpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 10,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.woman,
                size: 50,
              ),
              Text('درصد چربی رو بگیر'),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: getcotrollerbmi,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وارد کن bmi',
                        hintStyle: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: getcontrollerage,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'سن ',
                        hintStyle: TextStyle(fontSize: 30),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 100), elevation: 15),
                onPressed: () {
                  final age = double.parse(getcontrollerage.text);
                  final bmi = double.parse(getcotrollerbmi.text);

                  setState(() {
                    resone = (1.20 * bmi) + (0.23 * age) - 5.4;
                  });
                },
                child: Text(
                  'محاسبه کن',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '${resone.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.black, fontSize: 30),
              )
            ],
          ),
        ));
  }
}
