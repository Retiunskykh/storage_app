import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:storage_app/helpers/const.dart';


class ManagePage extends StatelessWidget{
  const ManagePage({super.key});


  @override
  Widget build(BuildContext context) {
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
            height: MediaQuery.of(context).size.height*0.12,
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
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.05),
                const Icon(Iconsax.directbox_default, size: 25, color: Color.fromRGBO(255, 255, 255, 1)),
                SizedBox(width: MediaQuery.of(context).size.width*0.015),
                Text("Storage",
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.43),
                const Icon(Iconsax.search_normal_1, size: 25, color: Color.fromRGBO(255, 255, 255, 1)),
                SizedBox(width: MediaQuery.of(context).size.width*0.06),
                const Icon(Iconsax.slider_vertical, size: 25, color: Color.fromRGBO(255, 255, 255, 1)),
              ],
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.85,
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width*0.05,
              left: MediaQuery.of(context).size.width*0.05,
              top: MediaQuery.of(context).size.height*0.03,
            ),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.13,
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width*0.04,
                    vertical: MediaQuery.of(context).size.height*0.02,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(20),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/folder.png",
                        width: MediaQuery.of(context).size.width*0.2,
                        height: MediaQuery.of(context).size.height*0.09
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("78.5 GB used", 
                            style: GoogleFonts.ubuntu(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("70% used",
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(100, 100, 100, 1),
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
                                Text("34.9 GB Free",
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
                          Container(
                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width*0.5,
                            height: MediaQuery.of(context).size.height*0.015,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 1),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.35,
                              height: MediaQuery.of(context).size.height*0.015,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(33, 210, 192, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            )
                          )
                        ]
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0)
                    ]
                  ) 
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.35,
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: MediaQuery.of(context).size.height*0.1,
                      crossAxisCount: 2,
                      mainAxisSpacing: MediaQuery.of(context).size.height*0.02,
                      crossAxisSpacing: MediaQuery.of(context).size.width*0.03,
                    ),
                    itemBuilder:(context, index) {
                      final category = categories[index];
                      return Container(
                        height: MediaQuery.of(context).size.height*0.1,
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width*0.02,
                          vertical: MediaQuery.of(context).size.height*0.01),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(20),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Image.asset("assets/images/${category["type"].toString().toLowerCase()}.png",
                              width: MediaQuery.of(context).size.height*0.07,
                              height: MediaQuery.of(context).size.height*0.07,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.01),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(category["type"].toString(),
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text("${category["count"]} Items",
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(100, 100, 100, 1),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ]
                            )
                          ]
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Big Files",
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
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.26,
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: MediaQuery.of(context).size.height*0.12,
                      crossAxisCount: 3,
                      mainAxisSpacing: MediaQuery.of(context).size.height*0.02,
                      crossAxisSpacing: MediaQuery.of(context).size.width*0.05,
                    ),
                    itemBuilder:(context, index) {
                      final bigFile = bigFiles[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset("assets/images/bigfile${bigFile["image"].toString()}.jpg",
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width*0.27,
                                height: MediaQuery.of(context).size.width*0.27,
                              )
                            ),
                            Container(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                              width: MediaQuery.of(context).size.width*0.27,
                              height: MediaQuery.of(context).size.height*0.043,
                              decoration:  BoxDecoration(
                                color: Colors.black.withOpacity(0.7),
                                borderRadius: const BorderRadius.vertical(
                                  bottom: Radius.circular(5)
                                )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${bigFile["name"].toString()}.mp4",
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(200, 200, 200, 1),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  Text(bigFile["size"].toString(),
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(150, 150, 150, 1),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ]
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  )
                )
              ]
            )
          )
        ]
      )
    );
  }
}