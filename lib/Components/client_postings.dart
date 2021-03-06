import 'package:flutter/material.dart';
import 'package:profile_parsing/Constants/constants.dart';
import 'package:profile_parsing/Models/models.dart';

class ClientPosting extends StatefulWidget {
  ClientPosting({Key? key, this.snapshot}) : super(key: key);
  AsyncSnapshot<Profile>? snapshot;
  @override
  _ClientPostingState createState() => _ClientPostingState();
}

class _ClientPostingState extends State<ClientPosting> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var postings = widget.snapshot!.data!.clientPostings;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: CustomText(
            text: 'Client Postings',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 0.32 * height,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: postings!.length,
              itemBuilder: (context, item) {
                var post = postings[item];
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    color: Colors.orange[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: SizedBox(
                      width: 0.67 * width,
                      height: 0.32 * height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                              CustomText(
                                text: post.profession,
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: CustomText(
                              text: post.description,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.black
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              RichText(
                                text: TextSpan(
                                  text: 'Budget: ',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.redAccent,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: post.budgetCc!+" "+post.budget.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Openings: ',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.redAccent,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: post.openings.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
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

                              RichText(
                                text: TextSpan(
                                  text: 'Experience: ',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.redAccent,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: post.experience.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 0.32*width,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Location: ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.redAccent,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: post.location,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 14),
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
                  ),
                );
              }),
        )
      ],
    );
  }
}
