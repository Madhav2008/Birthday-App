import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Poem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xff13195b),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Message',
                ),
                Tab(
                  text: 'Memories',
                ),
              ],
            ),
            centerTitle: true,
            title: Text(
              'Happy Birthday',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.lightBlue,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "I hope Ur Birthday is as sweet as the cake. And the year . And the year to follow is filled with as much joy as you bring ur friends",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OleoScript'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 36, bottom: 36,),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blueAccent,
                  child: ListView(
                    children: [
                      Image(
                        image: AssetImage("image/image1.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image2.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image3.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image4.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image5.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image6.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image7.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image8.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image9.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image10.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image11.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image12.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image13.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                      Image(
                        image: AssetImage("image/image14.jpg"),
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
