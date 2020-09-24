import 'package:flutter/material.dart';

Color determineColor(project) {
  if (project.status == "Completed") {
    return Colors.green;
  } else if (project.status == "Not-Started") {
    return Colors.red;
  } else if (project.status == "On-Going") {
    return Colors.orange;
  }
}
