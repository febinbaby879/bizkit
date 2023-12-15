import 'package:bizkit/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviewMainScreen extends StatelessWidget {
  const PreviewMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.align_vertical_top,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: const Text('My Bizkit Card Preview'),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5, // Number of containers
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 200,
                  width: 150.0,
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Container $index',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Febin Baby',
            style: TextStyle(color: kwhite, fontSize: 26.sp),
          ),
          const Text('Mobile app developer - Flutter'),
          adjustHieght(khieght * .02),
          Row(
            children: [
              rowItems(asset: 'asset/images/preview phone.png'),
              rowItems(asset: 'asset/images/preview messages gif.gif'),
              rowItems(asset: 'asset/images/preview globe.gif'),
              rowItems(asset: 'asset/images/preview_spinner.png'),
              rowItems(asset: 'asset/images/preview location gif.gif'),
            ],
          ),
          adjustHieght(khieght * .02),
          bankPersonAchieved(
            'asset/images/banking.png',
            'asset/images/persona.png',
            'asset/images/achieved.png',
          ),
        ],
      ),
    );
  }

  Widget bankPersonAchieved(frst, secnd, thrd) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 7),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(53, 53, 53, 0.42),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(frst),
                  Text('Banking', style: TextStyle(fontSize: 10.sp)),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 7),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(53, 53, 53, 0.42),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(secnd),
                  Text('Banking', style: TextStyle(fontSize: 10.sp)),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 7),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(53, 53, 53, 0.42),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(thrd),
                  Text(
                    'Banking',
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget rowItems({required String asset}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 7, right: 7),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Color.fromRGBO(53, 53, 53, 0.42),
          ),
          height: 40,
          child: Image.asset(asset),
        ),
      ),
    );
  }
}
