import 'package:flutter/material.dart';

class User {
  final String firstName;
  final String lastName;
  final String imgURL;

  const User({ // خلينا الداتا دي اجباري بال required $ {} البراكيت
    required this.firstName,
    required this.lastName,
    required this.imgURL,
  });
}
