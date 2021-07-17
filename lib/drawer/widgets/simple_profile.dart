import 'package:flutter/material.dart';

class SimpleProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("images/profile-bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      child: Container(
        height: 200,
        padding: EdgeInsets.only(top: 24.0, bottom: 10.0),
        color: Colors.black12.withOpacity(0.1),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Maharo.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Row(children: [
                    Image(
                      image: AssetImage('images/facebook.png'),
                      height: 25,
                    ),
                    Image(
                      image: AssetImage('images/gmail.png'),
                      height: 25,
                    ),
                    Image(
                      image: AssetImage('images/linkedin.png'),
                      height: 25,
                    ),
                    Image(
                      image: AssetImage('images/github.png'),
                      height: 25,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
