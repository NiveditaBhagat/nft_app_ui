import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final child;
  const GlassBox({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(110),
        child: Container(
          height: 80,
         
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
            child: Container( 
              alignment:Alignment.bottomCenter,
              child: child,
            ),
            
          ),
        ),
      ),
    );
  }
}