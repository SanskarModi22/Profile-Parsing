import 'package:flutter/material.dart';
import 'package:profile_parsing/Components/client_postings.dart';
import 'package:profile_parsing/Components/events.dart';
import 'package:profile_parsing/Components/personal.dart';
import 'package:profile_parsing/Components/portfolio.dart';
import 'package:profile_parsing/Components/professions.dart';
import 'package:profile_parsing/Components/questions.dart';
import 'package:profile_parsing/Constants/constants.dart';
import 'package:profile_parsing/Models/models.dart';
import 'package:profile_parsing/Network/network.dart';
import 'package:profile_parsing/Provider/provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Future<Profile>? profile;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profile = ProfileNetwork();
    profile!.then((value) {
      print(value.basic!.fullname);
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: CustomText(
        //     text: 'Profile',
        //     fontSize: 25,
        //     fontWeight: FontWeight.w700,
        //   ),
        //   centerTitle: true,
        //   elevation: 0,
        // ),
        body: FutureBuilder(
            future: profile,
            builder: (BuildContext context, AsyncSnapshot<Profile> snapshot) {
              if(snapshot.hasData)
                {
                  return ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Personal(
                        snapshot: snapshot,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: Colors.white,thickness: 1.2,indent: 15,endIndent: 15,),
                      SizedBox(
                        height: 10,
                      ),

                      ClientPosting(
                        snapshot: snapshot,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: Colors.white,thickness: 1.2,indent: 15,endIndent: 15,),
                      SizedBox(
                        height: 10,
                      ),
                      Event(
                        snapshot: snapshot,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: Colors.white,thickness: 1.2,indent: 15,endIndent: 15,),
                      SizedBox(
                        height: 10,
                      ),
                      Portfolios(
                        snapshot: snapshot,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: Colors.white,thickness: 1.2,indent: 15,endIndent: 15,),
                      SizedBox(
                        height: 10,
                      ),
                      Question(
                        snapshot: snapshot,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: Colors.white,thickness: 1.2,indent: 15,endIndent: 15,),
                      SizedBox(
                        height: 10,
                      ),
                      Profession(snapshot: snapshot,),
                    ],
                  );
                }
              else return Center(
                  child: CircularProgressIndicator(),
              );

            }));
  }
}

Future<Profile> ProfileNetwork() => Network().getProfile();
