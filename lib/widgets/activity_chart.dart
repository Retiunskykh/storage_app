import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget activityChart(context, int actions, String day){
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.1,
      height: MediaQuery.of(context).size.height*0.18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width*0.06,
            height: MediaQuery.of(context).size.height*0.15,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(186, 163, 232, 0.2),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              width: MediaQuery.of(context).size.width*0.06,
              height: MediaQuery.of(context).size.height*(actions*0.01),
              decoration: BoxDecoration(
                color: actions!=15 ? const Color.fromRGBO(186, 163, 232, 1) : const Color.fromRGBO(124, 82, 214, 1),
                borderRadius: BorderRadius.circular(20)
              ),
            )
          ),
          Text(day, 
            maxLines: 1,
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(50, 50, 50, 1),
              decoration: TextDecoration.none,
            ),
          )
        ],
      )
    );
  }