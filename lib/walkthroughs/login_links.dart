import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough/sign_up/sign_up_widget.dart';
import '/walkthrough/login_here/login_here_widget.dart';
import '/walkthrough/forgot_pass/forgot_pass_widget.dart';

// Focus widget keys for this walkthrough
final textXtpv0n36 = GlobalKey();
final buttonIe5uxbg2 = GlobalKey();
final textYzqy7p47 = GlobalKey();

/// Login Links
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textXtpv0n36,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => SignUpWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonIe5uxbg2,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => LoginHereWidget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textYzqy7p47,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => ForgotPassWidget(),
          ),
        ],
      ),
    ];
