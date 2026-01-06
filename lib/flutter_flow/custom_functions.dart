import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool checkIfDocExists(
  List<FrontDocRow> docList,
  String targetName,
) {
  // We check the list (docList) to see if any row matches the name
  return docList.any((row) =>
      row.fileName?.trim().toLowerCase() == targetName.trim().toLowerCase());
}

String getDocUrl(
  List<FrontDocRow> docList,
  String targetName,
) {
  // Find the matching row in the list
  final doc = docList.firstWhere(
    (row) =>
        row.fileName?.trim().toLowerCase() == targetName.trim().toLowerCase(),
    // For Supabase Rows, we return the first item as a fallback to avoid errors
    orElse: () => docList.first,
  );

  // Only return the URL if the names actually match, otherwise return empty
  if (doc.fileName?.trim().toLowerCase() == targetName.trim().toLowerCase()) {
    return doc.fileUrl ?? '';
  }

  return '';
}
