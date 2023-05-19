import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:zoom_clone/resources/auth_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  void creatNewMeeting({required String roomName}) async {
    try {
      Map<FeatureFlag, Object> featureFlags = {};

      // Define meetings options here
      var options = JitsiMeetingOptions(
        roomNameOrUrl: roomName,
      )..userDisplayName = _authMethods.currentUserData.displayName;
    } catch (error) {
      debugPrint("error: $error");
    }
  }
}
