import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String getBaseUrl() => 'https://hafbam.ricive.com/api/v1/auth';
  static Map<String, String> headers = {
    'Accept': 'application/json',
  };
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static RegisterCall registerCall = RegisterCall();
  static LoginCall loginCall = LoginCall();
  static VerifyNewAccountCall verifyNewAccountCall = VerifyNewAccountCall();
  static CheckUserExistsUsernameCall checkUserExistsUsernameCall =
      CheckUserExistsUsernameCall();
  static CheckUserExistsEmailCall checkUserExistsEmailCall =
      CheckUserExistsEmailCall();
  static ConfirmOTPCall confirmOTPCall = ConfirmOTPCall();
  static ResetPasswordCall resetPasswordCall = ResetPasswordCall();
  static ResendOtpCall resendOtpCall = ResendOtpCall();
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password',
      apiUrl: '${baseUrl}/forgot-password',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? forgotPassMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
  List<String>? emailError(dynamic response) => (getJsonField(
        response,
        r'''$.errors.email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? username = '',
    String? email = '',
    String? phone = '',
    String? password = '',
    String? passwordConfirmation = '',
    String? referralCode = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "username": "${escapeStringForJson(username)}",
  "email": "${escapeStringForJson(email)}",
  "accept_tc": "yes",
  "phone": "${escapeStringForJson(phone)}",
  "password": "${escapeStringForJson(password)}",
  "password_confirmation": "${escapeStringForJson(passwordConfirmation)}",
  "referral_code": "${escapeStringForJson(referralCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '${baseUrl}/register',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? registerMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  dynamic errors(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
  List<String>? emailErr(dynamic response) => (getJsonField(
        response,
        r'''$.errors.email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? phoneErr(dynamic response) => (getJsonField(
        response,
        r'''$.errors.phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? usernameErr(dynamic response) => (getJsonField(
        response,
        r'''$.errors.username''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? passwordErr(dynamic response) => (getJsonField(
        response,
        r'''$.errors.password''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? loginmessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? fullname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? fname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.first_name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? mainphone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  String? refcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.referral_code''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.uid''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
  String? acctStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.onboarding_stage''',
      ));
}

class VerifyNewAccountCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify New Account',
      apiUrl: '${baseUrl}/verify-account',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? acctStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.onboarding_stage''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic memberInfo(dynamic response) => getJsonField(
        response,
        r'''$.customer''',
      );
}

class CheckUserExistsUsernameCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Check User Exists  Username',
      apiUrl: '${baseUrl}/check-user',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CheckUserExistsEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Check User Exists  Email',
      apiUrl: '${baseUrl}/check-user',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ConfirmOTPCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? otp = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm OTP',
      apiUrl: '${baseUrl}/confirm-otp',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? responseMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List<String>? otpError(dynamic response) => (getJsonField(
        response,
        r'''$.errors.otp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ResetPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? otp = '',
    String? password = '',
    String? passwordConfirmation = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "otp": "${escapeStringForJson(otp)}",
  "password": "${escapeStringForJson(password)}",
  "password_confirmation": "${escapeStringForJson(passwordConfirmation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset Password',
      apiUrl: '${baseUrl}/reset-password',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? responseMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ResendOtpCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? otpType = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "otp_type": "${escapeStringForJson(otpType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Resend Otp',
      apiUrl: '${baseUrl}/resend-otp',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? resendMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End Authentication Group Code

/// Start Profile Group Code

class ProfileGroup {
  static String getBaseUrl({
    String? bearerAuth = '',
  }) =>
      'https://hafbam.ricive.com/api/v1';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [bearerAuth]',
  };
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static UpdateProfileCall updateProfileCall = UpdateProfileCall();
  static GetProfileCall getProfileCall = GetProfileCall();
  static ReferredUsersCall referredUsersCall = ReferredUsersCall();
  static NotificationsCall notificationsCall = NotificationsCall();
  static ReadNotificationCall readNotificationCall = ReadNotificationCall();
  static ReadAllNotificationsCall readAllNotificationsCall =
      ReadAllNotificationsCall();
  static InitiatePinRequestCall initiatePinRequestCall =
      InitiatePinRequestCall();
  static UpdatePinCall updatePinCall = UpdatePinCall();
  static UpdateProfilePictureCall updateProfilePictureCall =
      UpdateProfilePictureCall();
  static UpdateBVNCall updateBVNCall = UpdateBVNCall();
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? oldPassword = '',
    String? password = '',
    String? passwordConfirmation = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "old_password": "${escapeStringForJson(oldPassword)}",
  "password": "${escapeStringForJson(password)}",
  "password_confirmation": "${escapeStringForJson(passwordConfirmation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Password',
      apiUrl: '${baseUrl}/profile/change-password',
      callType: ApiCallType.PATCH,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class UpdateProfileCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? address = '',
    String? profilePicture = '',
    String? gender = '',
    String? country = '',
    String? state = '',
    String? lga = '',
    String? phone = '',
    String? email = '',
    String? username = '',
    String? alternatePhone = '',
    String? nin = '',
    String? bvn = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "address": "${escapeStringForJson(address)}",
  "profile_picture": "${escapeStringForJson(profilePicture)}",
  "gender": "${escapeStringForJson(gender)}",
  "country": "${escapeStringForJson(country)}",
  "state": "${escapeStringForJson(state)}",
  "lga": "${escapeStringForJson(lga)}",
  "email": "${escapeStringForJson(email)}",
  "phone": "${escapeStringForJson(phone)}",
  "username": "${escapeStringForJson(username)}",
  "nin": "${escapeStringForJson(nin)}",
  "bvn": "${escapeStringForJson(bvn)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Profile',
      apiUrl: '${baseUrl}/profile/update',
      callType: ApiCallType.PATCH,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? responseMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile',
      apiUrl: '${baseUrl}/profile',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? fullName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? fName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.first_name''',
      ));
  String? eMail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uid''',
      ));
  String? accNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bank_account.account_number''',
      ));
  String? accName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bank_account.account_name''',
      ));
  String? accBalance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bank_account.account_balance''',
      ));
  String? gender(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.gender''',
      ));
  String? referralcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referral_code''',
      ));
  List? activePlans(dynamic response) => getJsonField(
        response,
        r'''$.saving_plans''',
        true,
      ) as List?;
  String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.saving_plans[:].frequency''',
      ));
  String? profilePhoto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.profile_picture''',
      ));
  String? acctStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.onboarding_stage''',
      ));
}

class ReferredUsersCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Referred Users',
      apiUrl: '${baseUrl}/profile/referred-users',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? referredusers(dynamic response) => getJsonField(
        response,
        r'''$.referred_users.data''',
        true,
      ) as List?;
  dynamic meta(dynamic response) => getJsonField(
        response,
        r'''$.referred_users.meta''',
      );
  String? totalpoints(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total_points''',
      ));
}

class NotificationsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Notifications',
      apiUrl: '${baseUrl}/profile/notifications',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? notisData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<String>? notisTitle(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? notisMessage(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? notisDate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? notisId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ReadNotificationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Read Notification',
      apiUrl: '${baseUrl}/profile/read-notification/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadAllNotificationsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Read All Notifications',
      apiUrl: '${baseUrl}/profile/read-all-notiifcations',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InitiatePinRequestCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initiate Pin Request',
      apiUrl: '${baseUrl}/profile/initiate-pin-setup',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class UpdatePinCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? pin = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(otp)}",
  "pin": "${escapeStringForJson(pin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Pin',
      apiUrl: '${baseUrl}/profile/update-pin',
      callType: ApiCallType.PATCH,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProfilePictureCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? profilePicture,
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Profile Picture',
      apiUrl: '${baseUrl}/profile/update-picture',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'profile_picture': profilePicture,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateBVNCall {
  Future<ApiCallResponse> call({
    String? bvn = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "bvn": "${escapeStringForJson(bvn)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update BVN',
      apiUrl: '${baseUrl}/profile/update-bvn',
      callType: ApiCallType.PATCH,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Profile Group Code

/// Start Transactions Group Code

class TransactionsGroup {
  static String getBaseUrl({
    String? bearerAuth = '',
  }) =>
      'https://hafbam.ricive.com/api/v1/';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [bearerAuth]',
  };
  static AllTransactionsCall allTransactionsCall = AllTransactionsCall();
  static IntraTransferCall intraTransferCall = IntraTransferCall();
  static ExternalTransferWIPCall externalTransferWIPCall =
      ExternalTransferWIPCall();
  static FetchAccountDetailsCall fetchAccountDetailsCall =
      FetchAccountDetailsCall();
  static TransactionReferenceCall transactionReferenceCall =
      TransactionReferenceCall();
}

class AllTransactionsCall {
  Future<ApiCallResponse> call({
    int? page = 1,
    String? startDate = '',
    String? endDate = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TransactionsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'All Transactions',
      apiUrl: '${baseUrl}transactions/',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
        'start_date': startDate,
        'end_date': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic meta(dynamic response) => getJsonField(
        response,
        r'''$.meta''',
      );
  dynamic links(dynamic response) => getJsonField(
        response,
        r'''$.links''',
      );
  List<String>? transType(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transAmt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transDate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transaction_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.current_page''',
      ));
  int? lastPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.last_page''',
      ));
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transaction_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class IntraTransferCall {
  Future<ApiCallResponse> call({
    String? identifier = '',
    String? amount = '',
    String? pin = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TransactionsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "identifier": "${escapeStringForJson(identifier)}",
  "amount": "${escapeStringForJson(amount)}",
  "pin": "${escapeStringForJson(pin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Intra Transfer',
      apiUrl: '${baseUrl}transactions/intra-transfer',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors''',
      ));
}

class ExternalTransferWIPCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? amount = '',
    String? accountName = '',
    String? bankId = '',
    String? pin = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TransactionsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "account_number": "${escapeStringForJson(accountNumber)}",
  "amount": "${escapeStringForJson(amount)}",
  "account_name": "${escapeStringForJson(accountName)}",
  "bank_id": "${escapeStringForJson(bankId)}",
  "pin": "${escapeStringForJson(pin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'External Transfer WIP',
      apiUrl: '${baseUrl}transactions/withdraw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? withMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class FetchAccountDetailsCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? bankCode = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TransactionsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Account Details',
      apiUrl: '${baseUrl}fetch-account',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'account_number': accountNumber,
        'bank_code': bankCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? fetchAccountName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account_name''',
      ));
  String? fetchAccountNumb(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account_number''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class TransactionReferenceCall {
  Future<ApiCallResponse> call({
    String? ref = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TransactionsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Transaction Reference',
      apiUrl: '${baseUrl}transactions/${ref}',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Transactions Group Code

/// Start Investments Group Code

class InvestmentsGroup {
  static String getBaseUrl({
    String? bearerAuth = '',
  }) =>
      'https://hafbam.ricive.com/api/v1';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [bearerAuth]',
  };
  static InvestmentsCall investmentsCall = InvestmentsCall();
  static AddFundsCall addFundsCall = AddFundsCall();
  static WithdrawCall withdrawCall = WithdrawCall();
}

class InvestmentsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = InvestmentsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Investments',
      apiUrl: '${baseUrl}/investments',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic invested(dynamic response) => getJsonField(
        response,
        r'''$.invested''',
      );
  String? amount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.invested.data[:].amount''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.invested.data[:].investment.name''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.invested.data''',
        true,
      ) as List?;
  dynamic investments(dynamic response) => getJsonField(
        response,
        r'''$.invested.data[:].investment''',
      );
  String? roi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.invested.data[:].investment.expected_roi''',
      ));
  int? duration(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.invested.data[:].investment.duration''',
      ));
}

class AddFundsCall {
  Future<ApiCallResponse> call({
    String? amount = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = InvestmentsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "amount": "${escapeStringForJson(amount)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Funds',
      apiUrl: '${baseUrl}/investments/fund',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? addfundMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? addFundError(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors''',
      ));
}

class WithdrawCall {
  Future<ApiCallResponse> call({
    String? amount = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = InvestmentsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "amount": "${escapeStringForJson(amount)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Withdraw',
      apiUrl: '${baseUrl}/investments/withdraw',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? withdMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? withdError(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors''',
      ));
}

/// End Investments Group Code

/// Start Bills Group Code

class BillsGroup {
  static String getBaseUrl({
    String? bearerAuth = '',
  }) =>
      'https://hafbam.ricive.com/api/v1/bills';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [bearerAuth]',
  };
  static NetworksCall networksCall = NetworksCall();
  static CableProvidersCall cableProvidersCall = CableProvidersCall();
  static PowerProvidersCall powerProvidersCall = PowerProvidersCall();
  static BuyAirtimeCall buyAirtimeCall = BuyAirtimeCall();
  static BuyDataCall buyDataCall = BuyDataCall();
  static BuyCableCall buyCableCall = BuyCableCall();
  static BuyPowerCall buyPowerCall = BuyPowerCall();
  static VerifyCableSmartCardCall verifyCableSmartCardCall =
      VerifyCableSmartCardCall();
  static VerifyMeterNumberCall verifyMeterNumberCall = VerifyMeterNumberCall();
  static DataPlansCall dataPlansCall = DataPlansCall();
}

class NetworksCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Networks',
      apiUrl: '${baseUrl}/networks',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CableProvidersCall {
  Future<ApiCallResponse> call({
    String? provider = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "provider": "${escapeStringForJson(provider)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cable Providers',
      apiUrl: '${baseUrl}/cable-providers/',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  String? serviceName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.ServiceName''',
      ));
  String? serviceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.content.serviceID''',
      ));
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.content''',
      );
  List? contentVar(dynamic response) => getJsonField(
        response,
        r'''$.content.variations''',
        true,
      ) as List?;
  List<String>? contentVarCode(dynamic response) => (getJsonField(
        response,
        r'''$.content.variations[:].variation_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? contentVarName(dynamic response) => (getJsonField(
        response,
        r'''$.content.varations[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? contentVarAmount(dynamic response) => (getJsonField(
        response,
        r'''$.content.varations[:].variation_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PowerProvidersCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Power Providers',
      apiUrl: '${baseUrl}/power-providers',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? provider(dynamic response) => (getJsonField(
        response,
        r'''$[:].provider''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? data(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class BuyAirtimeCall {
  Future<ApiCallResponse> call({
    String? network = '',
    String? amount = '',
    String? mobileNumber = '',
    String? pin = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "network": "${escapeStringForJson(network)}",
  "mobile_number": "${escapeStringForJson(mobileNumber)}",
  "amount": "${escapeStringForJson(amount)}",
  "save_beneficiary": "no",
  "pin": "${escapeStringForJson(pin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buy Airtime',
      apiUrl: '${baseUrl}/buy-airtime',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? airMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? prodName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.product_name''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.unique_element''',
      ));
  String? transType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.type''',
      ));
  String? transAmount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.amount''',
      ));
  String? transID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.transactionId''',
      ));
  String? transDesc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.response_description''',
      ));
  String? transReqId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.requestId''',
      ));
  String? transDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.transaction_date''',
      ));
}

class BuyDataCall {
  Future<ApiCallResponse> call({
    String? network = '',
    String? phoneNumber = '',
    String? productCode = '',
    String? pin = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "network": "${escapeStringForJson(network)}",
  "product_code": "${escapeStringForJson(productCode)}",
  "phone_number": "${escapeStringForJson(phoneNumber)}",
  "pin": "${escapeStringForJson(pin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buy Data',
      apiUrl: '${baseUrl}/buy-data',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? dataMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? transDesc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.response_description''',
      ));
  String? transReqID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.requestId''',
      ));
  String? transDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.transaction_date''',
      ));
  String? transAmount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.amount''',
      ));
  String? prodName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.product_name''',
      ));
  String? transType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.type''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.unique_element''',
      ));
  String? transID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.transactionId''',
      ));
}

class BuyCableCall {
  Future<ApiCallResponse> call({
    String? provider = '',
    String? productCode = '',
    String? cardNumber = '',
    String? pin = '',
    String? type = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "provider": "${escapeStringForJson(provider)}",
  "product_code": "${escapeStringForJson(productCode)}",
  "card_number": "${escapeStringForJson(cardNumber)}",
  "type": "${escapeStringForJson(type)}",
  "pin": "${escapeStringForJson(pin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buy Cable',
      apiUrl: '${baseUrl}/buy-cable',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? errors(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
        true,
      ) as List?;
  String? transReqId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.requestId''',
      ));
  String? cardNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.unique_element''',
      ));
  String? biller(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.product_name''',
      ));
  String? transDesc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.response_description''',
      ));
  String? transDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.transaction_date''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  int? tranAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.amount''',
      ));
  String? transAmount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.amount''',
      ));
  String? transType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.type''',
      ));
  String? transID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.transactionId''',
      ));
}

class BuyPowerCall {
  Future<ApiCallResponse> call({
    String? provider = '',
    String? productCode = '',
    String? meterNumber = '',
    String? amount = '',
    String? pin = '',
    String? type = '',
    String? phone = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "provider": "${escapeStringForJson(provider)}",
  "product_code": "${escapeStringForJson(productCode)}",
  "meter_number": "${escapeStringForJson(meterNumber)}",
  "amount": "${escapeStringForJson(amount)}",
  "pin": "${escapeStringForJson(pin)}",
  "type": "${escapeStringForJson(type)}",
  "phone": "${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buy Power',
      apiUrl: '${baseUrl}/buy-power',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic powerData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? productName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.product_name''',
      ));
  String? transType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.type''',
      ));
  String? accName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.customerName''',
      ));
  String? accAddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.customerAddress''',
      ));
  String? meterNum(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.meterNumber''',
      ));
  String? transDesc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.response_description''',
      ));
  String? transDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.transaction_date''',
      ));
  String? purchasedUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.units''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.token''',
      ));
  String? transID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.transactionId''',
      ));
  String? transAmount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.amount''',
      ));
  String? meterNumb(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.transactions.unique_element''',
      ));
}

class VerifyCableSmartCardCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? cardNumber = '',
    String? provider = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "provider": "${escapeStringForJson(provider)}",
  "card_number": "${escapeStringForJson(cardNumber)}",
  "product_code": "${escapeStringForJson(productCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify Cable Smart Card ',
      apiUrl: '${baseUrl}/verify-cable-smart-card',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.error''',
      ));
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.data.content''',
      );
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? errorCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.code''',
      ));
  String? custName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.Customer_Name''',
      ));
  String? custStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.Status''',
      ));
  String? custDueDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.Due_Date''',
      ));
}

class VerifyMeterNumberCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    String? meterNumber = '',
    String? type = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "product_code": "${escapeStringForJson(productCode)}",
  "meter_number": "${escapeStringForJson(meterNumber)}",
  "type": "${escapeStringForJson(type)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify Meter Number',
      apiUrl: '${baseUrl}/verify-smart-card',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? custName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.Customer_Name''',
      ));
  String? custAddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.content.Address''',
      ));
}

class DataPlansCall {
  Future<ApiCallResponse> call({
    String? network = 'No Available Data',
    String? bearerAuth = '',
  }) async {
    final baseUrl = BillsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "network": "${escapeStringForJson(network)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Data Plans',
      apiUrl: '${baseUrl}/data-plans',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? varCode(dynamic response) => (getJsonField(
        response,
        r'''$[:].variation_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? varAmt(dynamic response) => (getJsonField(
        response,
        r'''$[:].variation_amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End Bills Group Code

/// Start Common Group Code

class CommonGroup {
  static String getBaseUrl({
    String? bearerAuth = '',
  }) =>
      'https://hafbam.ricive.com/api/v1';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorisation': 'Bearer [bearerAuth]',
  };
  static UploadFileCall uploadFileCall = UploadFileCall();
  static BanksCall banksCall = BanksCall();
  static FetchAccountCall fetchAccountCall = FetchAccountCall();
}

class UploadFileCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? file,
    String? bearerAuth = '',
  }) async {
    final baseUrl = CommonGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Upload File',
      apiUrl: '${baseUrl}/upload-image',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorisation': 'Bearer ${bearerAuth}',
        'Content-Type':
            'multipart/form-data; boundary=<calculated when request is sent>',
      },
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BanksCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = CommonGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Banks',
      apiUrl: '${baseUrl}/banks',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorisation': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? banks(dynamic response) => getJsonField(
        response,
        r'''$.banks''',
        true,
      ) as List?;
  List<int>? bankID(dynamic response) => (getJsonField(
        response,
        r'''$.banks[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? bankName(dynamic response) => (getJsonField(
        response,
        r'''$.banks[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? bankCode(dynamic response) => (getJsonField(
        response,
        r'''$.banks[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? bankUSSD(dynamic response) => (getJsonField(
        response,
        r'''$.banks[:].ussd''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FetchAccountCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? bankCode = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = CommonGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Account',
      apiUrl: '${baseUrl}/fetch-account',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorisation': 'Bearer ${bearerAuth}',
      },
      params: {
        'account_number': accountNumber,
        'bank_code': bankCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account_number''',
      ));
  String? acctName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account_name''',
      ));
}

/// End Common Group Code

/// Start Savings Group Code

class SavingsGroup {
  static String getBaseUrl({
    String? bearerAuth = '',
  }) =>
      'https://hafbam.ricive.com/api/v1/savings';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [bearerAuth]',
  };
  static SaveCall saveCall = SaveCall();
  static HistoryCall historyCall = HistoryCall();
  static PlansCall plansCall = PlansCall();
  static LiquidateCall liquidateCall = LiquidateCall();
  static StatsCall statsCall = StatsCall();
}

class SaveCall {
  Future<ApiCallResponse> call({
    String? amount = '',
    String? planId = '',
    String? frequency = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = SavingsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "amount": "${escapeStringForJson(amount)}",
  "plan_id": ${escapeStringForJson(planId)},
  "frequency": "${escapeStringForJson(frequency)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Save',
      apiUrl: '${baseUrl}/save',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class HistoryCall {
  Future<ApiCallResponse> call({
    String? frequency = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = SavingsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'History',
      apiUrl: '${baseUrl}/history',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'frequency': frequency,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic meta(dynamic response) => getJsonField(
        response,
        r'''$.meta''',
      );
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PlansCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = SavingsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Plans',
      apiUrl: '${baseUrl}/plans',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? plans(dynamic response) => getJsonField(
        response,
        r'''$.plans''',
        true,
      ) as List?;
  List<String>? planName(dynamic response) => (getJsonField(
        response,
        r'''$.plans[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? frequency(dynamic response) => (getJsonField(
        response,
        r'''$.plans[:].frequency''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? planId(dynamic response) => (getJsonField(
        response,
        r'''$.plans[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class LiquidateCall {
  Future<ApiCallResponse> call({
    String? reason = '',
    int? savingsPlanId,
    String? bearerAuth = '',
  }) async {
    final baseUrl = SavingsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    final ffApiRequestBody = '''
{
  "reason": "${escapeStringForJson(reason)}",
  "savings_plan_id": ${savingsPlanId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Liquidate',
      apiUrl: '${baseUrl}/liquidate',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class StatsCall {
  Future<ApiCallResponse> call({
    String? frequency = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = SavingsGroup.getBaseUrl(
      bearerAuth: bearerAuth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Stats',
      apiUrl: '${baseUrl}/stats',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'frequency': frequency,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? totalSavings(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total_savings''',
      ));
  String? startDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_date''',
      ));
  String? endDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.end_date''',
      ));
  dynamic userPlan(dynamic response) => getJsonField(
        response,
        r'''$.plan''',
      );
  int? planId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.plan.id''',
      ));
  String? planName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plan.name''',
      ));
  String? totalProfits(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total_profits''',
      ));
  String? winCloseDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plan.window_availability.end_date''',
      ));
  String? winOpenDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plan.window_availability.start_date''',
      ));
  String? duration(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plan.maximum_term''',
      ));
  List<String>? winAvailDay(dynamic response) => (getJsonField(
        response,
        r'''$.plan.window_availability.days''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Savings Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
