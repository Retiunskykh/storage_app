import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';





class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});
  
  @override
  State<StatefulWidget> createState() => IntroductionPageState();
}

class IntroductionPageState extends State<IntroductionPage>{

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
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
          width: MediaQuery.of(context).size.width*0.85,
          height: MediaQuery.of(context).size.height*0.38,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.5,
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
              Text("Manage Project\nFile Everywhere",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  decoration: TextDecoration.none
                ),
              ),
              Text("A storage that will help you easily\nmanage your files and other data",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    stepCircle(const Color.fromRGBO(86, 178, 206, 1)),
                    stepCircle(const Color.fromRGBO(255, 255, 255, 1)),
                    stepCircle(const Color.fromRGBO(255, 255, 255, 1)),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.65,
                height: MediaQuery.of(context).size.height*0.06,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(33, 210, 192, 1),
                  borderRadius: BorderRadius.circular(30)
                ),
                alignment: Alignment.center,
                child: Text("Let`s Go",
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
            ]
          ),
        )
      ],
    );
  }

  Widget stepCircle(color){
    return Container(
      height: MediaQuery.of(context).size.height*0.01,
      width: MediaQuery.of(context).size.height*0.01,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color
      ),
    );
  }
}