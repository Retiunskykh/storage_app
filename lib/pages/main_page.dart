import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:storage_app/helpers/const.dart';

import '../widgets/activity_chart.dart';


class MainPage extends StatelessWidget{



  @override
  Widget build(BuildContext context){
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.38,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height*0.065,
              left: MediaQuery.of(context).size.width*0.03,
              right: MediaQuery.of(context).size.width*0.03,
              bottom: MediaQuery.of(context).size.width*0.07,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(125, 84, 214, 1), Color.fromRGBO(160, 110, 229, 1)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.05),
                    const Icon(Iconsax.directbox_send, size: 25, color: Color.fromRGBO(255, 255, 255, 1)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.015),
                    Text("QFile",
                      style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decoration: TextDecoration.none
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.49),
                    const Icon(Iconsax.search_normal_1, size: 25, color: Color.fromRGBO(255, 255, 255, 1)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.06),
                    const Icon(Iconsax.notification, size: 25, color: Color.fromRGBO(255, 255, 255, 1)),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.86,
                  height: MediaQuery.of(context).size.height*0.23,
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width*0.08,
                    left: MediaQuery.of(context).size.width*0.07,
                    top: MediaQuery.of(context).size.height*0.02,
                    bottom: MediaQuery.of(context).size.height*0.02,
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color.fromRGBO(255, 255, 255, 0.15), Color.fromRGBO(255, 255, 255, 0.1)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    border: Border.all(width: 0.5, color: const Color.fromRGBO(255, 255, 255, 1)),
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: MediaQuery.of(context).size.height*0.085,
                        lineWidth: 18,
                        percent: 0.6,
                        startAngle: 100,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text("60%",
                          style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            decoration: TextDecoration.none
                          ),
                        ),
                        backgroundColor: const Color.fromRGBO(233, 233, 233, 1),
                        progressColor: const Color.fromRGBO(33, 210, 192, 1),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.17,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.01,
                                  height: MediaQuery.of(context).size.width*0.01,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.02),
                                Text("Free Internal",
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                                    decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                            Text("34.9 GB",
                              style: GoogleFonts.ubuntu(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                decoration: TextDecoration.none
                              ),
                            ),
                            SizedBox(height:  MediaQuery.of(context).size.height*.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.01,
                                  height: MediaQuery.of(context).size.width*0.01,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(33, 210, 192, 1),
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.02),
                                Text("Used",
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                                    decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                            Text("78.5 GB",
                              style: GoogleFonts.ubuntu(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                decoration: TextDecoration.none
                              ),
                            ),
                            ScaleTap(
                              onPressed: () {
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height*0.015
                                ),
                                width: MediaQuery.of(context).size.width*0.27,
                                height: MediaQuery.of(context).size.height*0.04,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(33, 210, 192, 1),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Manage",
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.ubuntu(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      const  Icon(Icons.arrow_outward_rounded, color: Colors.white, size: 18,)
                                    ]
                                  )
                              )
                            )
                          ],
                        )
                      )
                    ]
                  ),
                )
              ]
            )
            ,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.62,
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width*0.05,
              left: MediaQuery.of(context).size.width*0.05,
              top: MediaQuery.of(context).size.height*0.03,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Activity",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Icon(Iconsax.more, color: Color.fromRGBO(0, 0, 0, 1), size: 25)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.25,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width*0.07,
                      left: MediaQuery.of(context).size.width*0.07,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3), // зсув тіні за горизонталлю і вертикаллю
                        ),
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        activityChart(context, 10, "Sun"),
                        activityChart(context, 7, "Mon"),
                        activityChart(context, 12, "Tue"),
                        activityChart(context, 15, "Wed"),
                        activityChart(context, 13, "Thu"),
                        activityChart(context, 11, "Fri"),
                        activityChart(context, 8, "Sat"),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Recent Files",
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Icon(Iconsax.more, color: Color.fromRGBO(0, 0, 0, 1), size: 25)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.94,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      padding: EdgeInsets.zero,
                      itemBuilder:(context, index) {
                        final Map <String, String> file = recentFiles[index];
                        return Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height*0.09,
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height*0.02,
                            horizontal: MediaQuery.of(context).size.width*0.03,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/files_icons/${file["type"]}.png",
                                width: MediaQuery.of(context).size.width*0.1,
                                height: MediaQuery.of(context).size.height*0.08
                              ),
                              Container(
                                width:  MediaQuery.of(context).size.width*0.5,

                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(file["name"].toString(), 
                                      style: GoogleFonts.ubuntu(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width*0.25,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(file["type"]!.toUpperCase(),
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(60, 60, 60, 1),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.01,
                                            height: MediaQuery.of(context).size.width*0.01,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(100, 100, 100, 1),
                                              borderRadius: BorderRadius.circular(100)
                                            ),
                                          ),
                                          Text(file["size"].toString(),
                                            style: GoogleFonts.ubuntu(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromRGBO(100, 100, 100, 1),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ],
                                      )
                                    ),
                                  ],
                                )
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: Text("5 min ago",
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(100, 100, 100, 1),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ]
              ),
            )
          )
        ]
      ),
    );
  }
}