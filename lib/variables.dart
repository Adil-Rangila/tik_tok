import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double size, [Color color, FontWeight fontWeight = FontWeight.w700]) {
  return GoogleFonts.montserrat(
    fontSize: size,
    color: color,
    fontWeight: fontWeight,
  );
}

final userCollection = FirebaseFirestore.instance.collection('users');
final videoCollection = FirebaseFirestore.instance.collection('videos');
