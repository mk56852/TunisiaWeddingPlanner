import 'dart:async';

import 'package:flutter/material.dart';

class AdWidget extends StatefulWidget {
  final List<String> images = [
    'assets/images/fleur.jpg',
    'assets/images/dress.jpg',
    'assets/images/instrumentist.jpg',
  ];
  final Duration duration;
  double height;

  AdWidget({
    required this.duration,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  _AdWidgetState createState() => _AdWidgetState();
}

class _AdWidgetState extends State<AdWidget> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(widget.duration, (timer) {
      setState(() {
        _index = (_index + 1) % widget.images.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1, 0),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: ModalRoute.of(context)!.animation!,
          curve: Curves.easeInOut,
        )),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  widget.images[_index],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
