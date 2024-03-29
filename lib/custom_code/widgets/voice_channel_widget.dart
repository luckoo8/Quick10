// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

//user agora_rtc_engine: ^5.3.0
class VoiceChannelWidget extends StatefulWidget {
  const VoiceChannelWidget({
    Key? key,
    this.width,
    this.height,
    required this.channelName,
    required this.appId,
    required this.token,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String channelName;
  final String appId;
  final String token;

  @override
  _VoiceChannelWidgetState createState() => _VoiceChannelWidgetState();
}

class _VoiceChannelWidgetState extends State<VoiceChannelWidget> {
  late RtcEngine _engine;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    initAgora();
  }

  @override
  void dispose() async {
    WidgetsBinding.instance.removeObserver(this);

    await _engine.leaveChannel();
    await _engine.destroy();
    super.dispose();
  }

  Future<void> initAgora() async {
    // retrieve permissions
    if (!kIsWeb) await [Permission.microphone].request();

    //create the engine
    _engine = await RtcEngine.create(widget.appId);

    await _engine.enableAudio();

    _engine.setEventHandler(
      RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed) {
          print("local user $uid joined");

          _engine.setEnableSpeakerphone(widget.enableSpeakerPhone);
        },
      ),
    );
    print("joining ${widget.channelName}");

    await _engine.joinChannel(widget.token, widget.channelName, "", 0);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
