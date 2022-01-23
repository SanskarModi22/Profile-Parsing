import 'package:flutter/material.dart';
import 'package:profile_parsing/Constants/constants.dart';
import 'package:profile_parsing/Models/models.dart';
class Profession extends StatefulWidget {
  Profession({Key? key,this.snapshot}) : super(key: key);
  AsyncSnapshot<Profile>? snapshot;
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<Profession> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var professions = widget.snapshot!.data!.professions;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'Professions',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 0.2 * height,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: professions!.length,
              itemBuilder: (context, item) {
                var profession = professions[item];
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.yellow[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Container(
                      width: 0.43 * width,
                      height: 0.2 * height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Title: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.purple[800],
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: profession.title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Experience: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.purple[800],
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: profession.experience.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Salary: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.purple[800],
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: profession.quickbookDetails==null?"No Info":profession.quickbookDetails!.rateAmount.toString()+" "+profession.quickbookDetails!.rateCurrency.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
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