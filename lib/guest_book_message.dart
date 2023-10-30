// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';

class GuestBookMessage {
  GuestBookMessage({
    required this.name,
    required this.message,
    required this.timestamp,
    required this.docId,
    required this.userId,
  });

  final String name;
  final String message;
  final int timestamp;
  final String docId;
  final String userId;

  String get formattedDate {
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp).toString();
    return date; // You can adjust the format
  }
}
