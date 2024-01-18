import 'package:fitnes_app/constants/lists.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../HomeScreens/navigation_bar.dart';

class GoalsPageView extends StatelessWidget {
   GoalsPageView({Key? key});

  final PageController _pageController = PageController(viewportFraction: 0.8);

  int _currentPageIndex = 0;

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            20.heightBox,
            Center(
              child: const Text("What is your goal ?")
                  .text
                  .bold
                  .wide
                  .size(20)
                  .make(),
            ),
            10.heightBox,
            Center(
              child: const Text(
                "It will help us to choose the best\n             program for you",
              ).text.size(12).color(Colors.black).make(),
            ),
            Expanded(
              flex: 18,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      double value = 1.0;
                      if (_pageController.position.haveDimensions) {
                        value = _pageController.page! - index;
                        value = (1 - (value.abs() * 0.29)).clamp(0.0, 1.0);
                      }
                      return Center(
                        child: SizedBox(
                          height: Curves.easeInOut.transform(value) * 580,
                          width: Curves.easeInOut.transform(value) * 330,
                          child: child,
                        ),
                      );
                    },
                    child: Container(
                        width: 205,
                        height: 210,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(-1.00, 0.08),
                            end: Alignment(1, -0.08),
                            colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                          shadows: [
                            const BoxShadow(
                              color: Color(0x4CC58BF2),
                              blurRadius: 22,
                              offset: Offset(0, 10),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            40.heightBox,
                            vectoresImage[index],
                            20.heightBox,
                            Text(
                              textForImage[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            20.heightBox,
                            Text(
                              descriptionForImage[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // ignore: prefer_const_constructors
                Get.to(NavigationBarScreen());
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF92A3FD)),
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(315, 60)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
                shadowColor:
                    MaterialStateProperty.all<Color>(const Color(0x4C95ADFE)),
                elevation: MaterialStateProperty.all<double>(22),
              ),
              child: Text(
                _currentPageIndex < 2 ? "Next" : "Finish",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            40.heightBox,
          ],
        ),
      ),
    );
  }
}
