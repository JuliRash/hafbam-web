import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough/enter_o_t_p/enter_o_t_p_widget.dart';
import '/walkthrough/verify_mail/verify_mail_widget.dart';
import '/walkthrough/resend_code/resend_code_widget.dart';

// Focus widget keys for this walkthrough
final pinCodeWmpsatlf = GlobalKey();
final buttonOhplkoeb = GlobalKey();
final textE65k26hq = GlobalKey();

/// Verify Email
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: pinCodeWmpsatlf,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => EnterOTPWidget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonOhplkoeb,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => VerifyMailWidget(),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textE65k26hq,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => ResendCodeWidget(),
          ),
        ],
      ),
    ];
