import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show immutable, kDebugMode;

import '../utils/db_strings.dart';

@immutable
class SygeniusFirestore {
  static FirebaseFirestore instance = switch (kDebugMode) {
    true => FirebaseFirestore.instanceFor(app: Firebase.app(), databaseId: DBStrings.devDatabase),
    false => FirebaseFirestore.instance,
  };
}
