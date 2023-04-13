import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
/*
 * ---------------------------
 * File : asset_image.dart
 * ---------------------------
 * Author : nesmin
 * Date : Tue Sep 07 2021 10:39:57 AM
 * Copyright (c) 2021 
 * ---------------------------
 */

class AImage extends StatelessWidget {
  const AImage({
    Key? key,
    required this.imgPath,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.cover,
  }) : super(key: key);
  final String imgPath;
  final double? height;
  final double? width;
  final BoxFit fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return (imgPath.contains('.svg'))
        ? SvgPicture.asset(
            imgPath,
            width: width,
            height: height,
            fit: fit,
            colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
          )
        : Image.asset(
            imgPath,
            width: width,
            height: height,
            fit: fit,
            color: color,
          );
  }
}
