import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_parsing/Constants/constants.dart';
import 'package:profile_parsing/Models/models.dart';
import 'package:profile_parsing/Provider/provider.dart';
import 'package:provider/provider.dart';

class Personal extends StatefulWidget {
  Personal({Key? key, this.snapshot}) : super(key: key);
  AsyncSnapshot<Profile>? snapshot;

  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<CounterModel>(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var personal = widget.snapshot!.data!.basic;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 0.25 * height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  height: 0.2 * height,
                  width: 0.9 * width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      personal!.cover!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0.35 * width,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        personal.image!,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            height: 0.23 * height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: TextSpan(
                    text: counter.Name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: ' @sanskar',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Email: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: counter.Email,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey[200],
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Dob: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: personal.dob!,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey[200],
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                      ),
                      color: Colors.purpleAccent,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                      ),
                      color: Colors.indigo,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                      ),
                      color: Colors.blueAccent,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                      ),
                      color: Colors.lightBlue,
                      iconSize: 30,
                    ),
                  ],
                ),
                Container(
                  height: 0.05*height,
                  width: 0.8 * width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white70,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Followers: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: personal.followings.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[100],
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Visited: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: personal.visits.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[100],
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
