import 'package:flutter/material.dart';
import 'package:profile_parsing/Constants/constants.dart';
import 'package:profile_parsing/Models/models.dart';

class Portfolios extends StatefulWidget {
  Portfolios({Key? key, this.snapshot}) : super(key: key);
  AsyncSnapshot<Profile>? snapshot;
  @override
  _PortfoliosState createState() => _PortfoliosState();
}

class _PortfoliosState extends State<Portfolios> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var portfolios = widget.snapshot!.data!.portfolio;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'Portfolios',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 0.52 * height,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: portfolios!.length,
              itemBuilder: (context, item) {
                var portfolio = portfolios[item];
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
                      width: 0.9 * width,
                      height: 0.52 * height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 0.25 * height,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                portfolio.images![0].image.toString(),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Position: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.cyanAccent,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: portfolio.position,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Project: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.cyanAccent,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: portfolio.projectName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          CustomText(
                            text: portfolio.description,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
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
