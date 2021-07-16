import 'package:flutter/material.dart';
import 'package:music_main/size_config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: SizeConfig.scaleWidth(15)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: SizeConfig.scaleHeight(50),
              ),
              Text(
                "Explore",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: SizeConfig.scaleTextFont(34),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(20),
              ),
              Text(
                "Recently played",
                style: TextStyle(
                    fontSize: SizeConfig.scaleTextFont(22),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(15),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/amr_diab.png'),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.scaleHeight(5),
                        ),
                        Text(
                          "Amr diab",
                          style: TextStyle(
                              fontSize: SizeConfig.scaleTextFont(15),
                              color: Colors.black),
                        ),
                      ],
                    );
                  },
                ),
              ),

              Text(
                "Recommended for you",
                style: TextStyle(
                    fontSize: SizeConfig.scaleTextFont(22),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(15),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: SizeConfig.scaleWidth(12)),
                      child: Column(
                        children: [
                          Image.asset('assets/images/tamer.png'),
                          SizedBox(
                            height: SizeConfig.scaleHeight(5),
                          ),
                          Text(
                            "Tamer Hosny",
                            style: TextStyle(
                                fontSize: SizeConfig.scaleTextFont(17),
                                color: Colors.black),
                          ),
                          Text(
                            "oumri abtada",
                            style: TextStyle(
                                fontSize: SizeConfig.scaleTextFont(13),
                                color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(15),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: SizeConfig.scaleWidth(12)),
                      child: Column(
                        children: [
                          Image.asset('assets/images/tamer.png'),
                          SizedBox(
                            height: SizeConfig.scaleHeight(5),
                          ),
                          Text(
                            "Tamer Hosny",
                            style: TextStyle(
                                fontSize: SizeConfig.scaleTextFont(17),
                                color: Colors.black),
                          ),
                          Text(
                            "oumri abtada",
                            style: TextStyle(
                                fontSize: SizeConfig.scaleTextFont(13),
                                color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              /*****************************************************/

              // SizedBox(height: SizeConfig.scaleHeight(22),),
              // Text("Recommended for you",
              //   style: TextStyle(fontSize: SizeConfig.scaleTextFont(22),fontWeight: FontWeight.bold,color: Colors.black),),
              // SizedBox(height: SizeConfig.scaleHeight(15),),
              // Expanded(
              //   child: ListView.builder(
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 5,
              //     itemBuilder: (context,index){
              //       return Container(
              //         margin: EdgeInsets.only(right: SizeConfig.scaleWidth(12)),
              //         child: Column(
              //           children: [
              //             Image.asset('assets/images/tamer.png'),
              //             SizedBox(height: SizeConfig.scaleHeight(5),),
              //             Text("Tamer Hosny",
              //               style: TextStyle(fontSize: SizeConfig.scaleTextFont(17),color: Colors.black),),
              //             Text("oumri abtada",
              //               style: TextStyle(fontSize: SizeConfig.scaleTextFont(13),color: Colors.black),),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
