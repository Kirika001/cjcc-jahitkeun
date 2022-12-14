import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jahitkeeun/base/base_controller.dart';

class OnboardingController extends BaseController{
  List<Widget> image = [
    Image.asset('assets/intro1.png', fit: BoxFit.cover,),
    Image.asset('assets/intro2.png', fit: BoxFit.cover),
    Image.asset('assets/intro3.png', fit: BoxFit.cover),
  ];

  var currentIndex = 0.obs;
  CarouselController carouselController = CarouselController();

  @override
  void onInit() {
    super.onInit();
    image;
    print(currentIndex);
    update();
  }

}