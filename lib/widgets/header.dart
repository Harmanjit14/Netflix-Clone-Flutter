import 'package:flutter/material.dart';
import 'package:netflix/models/exports.dart';

class HeaderWidget extends StatelessWidget {
  final Content content;

  const HeaderWidget({Key key, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  content.imageUrl,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Container(
          height: 500,
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 130,
                child: Image.asset(content.titleImageUrl),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Icon(Icons.add),
                          SizedBox(height: 4),
                          Text(
                            "List",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Play",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Icon(Icons.info_outline),
                          SizedBox(height: 4),
                          Text(
                            "Info",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
