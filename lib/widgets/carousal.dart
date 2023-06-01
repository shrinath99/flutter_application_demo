import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousalWidget extends StatefulWidget {
  const CarousalWidget({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  State<CarousalWidget> createState() => _CarousalWidgetState();
}

class _CarousalWidgetState extends State<CarousalWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: widget.images.map((item) {
            return Center(
              child: Image.network(
                item,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: false,
            viewportFraction: 1,
            padEnds: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.map((url) {
            int index = widget.images.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                      .withOpacity(index == currentIndex ? 0.9 : 0.2)),
            );
          }).toList(),
        ),
      ],
    );
  }
}
