import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/const.dart';
import '../main.dart';
import 'main_page.dart';




class IntroductionPage extends ConsumerWidget{
  const IntroductionPage({super.key});

  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromRGBO(159, 109, 235, 1), Color.fromRGBO(124, 82, 214, 1)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ), 
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width*0.85,
          height: MediaQuery.of(context).size.height*0.38,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.1,
          ),
          child: Image.asset("assets/images/start_page_icons.png"),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.85,
          height: MediaQuery.of(context).size.height*0.38,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.55,
          ),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color.fromRGBO(255, 255, 255, 0.15), Color.fromRGBO(255, 255, 255, 0.1)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            border: Border.all(width: 0.5, color: const Color.fromRGBO(255, 255, 255, 1)),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(startPageTitles[counter],
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  decoration: TextDecoration.none
                ),
              ),
              Text(startPageDescription[counter],
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.15,
                height: MediaQuery.of(context).size.height * 0.01,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(width: MediaQuery.of(context).size.width*0.04),
                  itemBuilder: (context, index) {
                   return Container(
                      height: MediaQuery.of(context).size.height*0.01, 
                      width: MediaQuery.of(context).size.height*0.01,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: index == counter ?  const Color.fromRGBO(86, 178, 206, 1) : const Color.fromRGBO(255, 255, 255, 1)
                      ),
                    );
                  },
                ),
              ),
              ScaleTap(
                onPressed: () {
                  if (counter < 2) {
                    ref.read(counterProvider.notifier).state++;
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => MainPage()),
                    );
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.65,
                  height: MediaQuery.of(context).size.height*0.06,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(33, 210, 192, 1),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  alignment: Alignment.center,
                  child: Text(startPageButtonText[counter],
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                )
              )
            ]
          ),
        )
      ],
    );
  }
}