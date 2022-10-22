import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late Color _buttonColor;

  @override
  void initState() {
    //Начальное значение цвета кнопки
    _buttonColor = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 255, 255, 255),
      body: Column(
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Image.asset(
                'images/photo.png',
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 120,
                height: 20,
                margin: EdgeInsets.only(top: 45, left: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(60)),
                child: Center(
                  child: Text(
                    'News of the Day',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Climate Change Is Everywhere, But\nHere\'s the Science You Missed',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TextButton(
                  onPressed: () {},
                  child: Row(children: [
                    Text(
                      'Read',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    )
                  ]),
                ),
              )
            ]),
          ]),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 160,
                    child: TextButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        'News Burst',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 146, 22, 247),
                              Colors.purple,
                              Color.fromARGB(131, 235, 93, 211),
                              Color.fromARGB(255, 255, 188, 2),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.01, 0.2, 0.6, 1])),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Deep Dive',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  child: Text(
                    'Trending',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('Popular', style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('Today', style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text('Environment',
                      style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
                TextButton(
                  child:
                      Text('Short Doc', style: TextStyle(color: Colors.black)),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 470,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(''),
                Column(
                  children: [
                    Text('data'),
                    Text('data'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
