import 'package:flutter/material.dart';
import 'package:profile_parsing/Constants/constants.dart';
import 'package:profile_parsing/Models/models.dart';

class Event extends StatefulWidget {
  Event({Key? key, this.snapshot}) : super(key: key);
  AsyncSnapshot<Profile>? snapshot;
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var events = widget.snapshot!.data!.events;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: CustomText(
            text: 'Events',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 0.35 * height,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: events!.length,
              itemBuilder: (context, item) {
                var event = events[item];
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Container(
                      width: 0.67 * width,
                      height: 0.35 * height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child: Image.network(
                              event.thumbnail.toString(),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Theme: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.green,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: event.theme,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
