import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum IconData {
  phone,
  location,
  share,
}

extension IconExtension on IconData {
  String get name => describeEnum(this);
  Icon get getIcon {
    switch (this) {
      case IconData.phone:
        return Icon(
          Icons.call,
          color: Colors.blue,
        );
      case IconData.location:
        return Icon(
          Icons.navigation,
          color: Colors.blue,
        );
      case IconData.share:
        return Icon(
          Icons.share,
          color: Colors.blue,
        );
      default:
        return Icon(
          Icons.call,
          color: Colors.blue,
        );
    }
  }
}

Row actions() {
  Container icon(IconData iconData) {
    return (Container(
      margin: EdgeInsets.all(15),
      child: (iconData.getIcon),
    ));
  }

  return (Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      icon(IconData.phone),
      icon(IconData.location),
      icon(IconData.share),
    ],
  ));
}
