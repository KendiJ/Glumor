import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'firebase_user_provider.freezed.dart';

@freezed
abstract class GlumorFirebaseUser implements _$GlumorFirebaseUser {
  factory GlumorFirebaseUser.user(User user) = _User;
  factory GlumorFirebaseUser.loggedOut() = _LoggedOut;
  factory GlumorFirebaseUser.initial() = _Initial;
}

bool loggedIn = false;

final glumorFirebaseUser = FirebaseAuth.instance
    .userChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<GlumorFirebaseUser>((user) {
  loggedIn = user != null;
  return user != null
      ? GlumorFirebaseUser.user(user)
      : GlumorFirebaseUser.loggedOut();
}).shareValueSeeded(GlumorFirebaseUser.initial());

GlumorFirebaseUser get currentUser => glumorFirebaseUser.value;
