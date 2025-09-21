// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetProfileStruct extends BaseStruct {
  GetProfileStruct({
    int? id,
    String? name,
    String? firstName,
    String? username,
    String? email,
    String? phone,
    String? emailVerifiedAt,
    String? phoneVerifiedAt,
    int? acceptTc,
    String? referralCode,
    String? uid,
    String? address,
    String? longitude,
    String? latitude,
    String? onboardingStage,
    String? status,
    String? state,
    String? lga,
    String? role,
    int? disabled,
    String? lastLoginDate,
    BankAccountStruct? bankAccount,
    List<SavingPlansStruct>? savingPlans,
    String? nin,
    String? bvn,
    String? mobileToken,
    String? createdAt,
    String? updatedAt,
    String? active,
    String? dob,
    String? profilePicture,
    String? gender,
    String? smsNotification,
    String? pushNotification,
    String? emailNotification,
    String? walletBalance,
    String? online,
    bool? investor,
    String? paymentMethods,
    bool? addedAddress,
  })  : _id = id,
        _name = name,
        _firstName = firstName,
        _username = username,
        _email = email,
        _phone = phone,
        _emailVerifiedAt = emailVerifiedAt,
        _phoneVerifiedAt = phoneVerifiedAt,
        _acceptTc = acceptTc,
        _referralCode = referralCode,
        _uid = uid,
        _address = address,
        _longitude = longitude,
        _latitude = latitude,
        _onboardingStage = onboardingStage,
        _status = status,
        _state = state,
        _lga = lga,
        _role = role,
        _disabled = disabled,
        _lastLoginDate = lastLoginDate,
        _bankAccount = bankAccount,
        _savingPlans = savingPlans,
        _nin = nin,
        _bvn = bvn,
        _mobileToken = mobileToken,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _active = active,
        _dob = dob,
        _profilePicture = profilePicture,
        _gender = gender,
        _smsNotification = smsNotification,
        _pushNotification = pushNotification,
        _emailNotification = emailNotification,
        _walletBalance = walletBalance,
        _online = online,
        _investor = investor,
        _paymentMethods = paymentMethods,
        _addedAddress = addedAddress;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "email_verified_at" field.
  String? _emailVerifiedAt;
  String get emailVerifiedAt => _emailVerifiedAt ?? '';
  set emailVerifiedAt(String? val) => _emailVerifiedAt = val;

  bool hasEmailVerifiedAt() => _emailVerifiedAt != null;

  // "phone_verified_at" field.
  String? _phoneVerifiedAt;
  String get phoneVerifiedAt => _phoneVerifiedAt ?? '';
  set phoneVerifiedAt(String? val) => _phoneVerifiedAt = val;

  bool hasPhoneVerifiedAt() => _phoneVerifiedAt != null;

  // "accept_tc" field.
  int? _acceptTc;
  int get acceptTc => _acceptTc ?? 0;
  set acceptTc(int? val) => _acceptTc = val;

  void incrementAcceptTc(int amount) => acceptTc = acceptTc + amount;

  bool hasAcceptTc() => _acceptTc != null;

  // "referral_code" field.
  String? _referralCode;
  String get referralCode => _referralCode ?? '';
  set referralCode(String? val) => _referralCode = val;

  bool hasReferralCode() => _referralCode != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  set longitude(String? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  set latitude(String? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "onboarding_stage" field.
  String? _onboardingStage;
  String get onboardingStage => _onboardingStage ?? '';
  set onboardingStage(String? val) => _onboardingStage = val;

  bool hasOnboardingStage() => _onboardingStage != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "lga" field.
  String? _lga;
  String get lga => _lga ?? '';
  set lga(String? val) => _lga = val;

  bool hasLga() => _lga != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "disabled" field.
  int? _disabled;
  int get disabled => _disabled ?? 0;
  set disabled(int? val) => _disabled = val;

  void incrementDisabled(int amount) => disabled = disabled + amount;

  bool hasDisabled() => _disabled != null;

  // "last_login_date" field.
  String? _lastLoginDate;
  String get lastLoginDate => _lastLoginDate ?? '';
  set lastLoginDate(String? val) => _lastLoginDate = val;

  bool hasLastLoginDate() => _lastLoginDate != null;

  // "bank_account" field.
  BankAccountStruct? _bankAccount;
  BankAccountStruct get bankAccount => _bankAccount ?? BankAccountStruct();
  set bankAccount(BankAccountStruct? val) => _bankAccount = val;

  void updateBankAccount(Function(BankAccountStruct) updateFn) {
    updateFn(_bankAccount ??= BankAccountStruct());
  }

  bool hasBankAccount() => _bankAccount != null;

  // "saving_plans" field.
  List<SavingPlansStruct>? _savingPlans;
  List<SavingPlansStruct> get savingPlans => _savingPlans ?? const [];
  set savingPlans(List<SavingPlansStruct>? val) => _savingPlans = val;

  void updateSavingPlans(Function(List<SavingPlansStruct>) updateFn) {
    updateFn(_savingPlans ??= []);
  }

  bool hasSavingPlans() => _savingPlans != null;

  // "nin" field.
  String? _nin;
  String get nin => _nin ?? '';
  set nin(String? val) => _nin = val;

  bool hasNin() => _nin != null;

  // "bvn" field.
  String? _bvn;
  String get bvn => _bvn ?? '';
  set bvn(String? val) => _bvn = val;

  bool hasBvn() => _bvn != null;

  // "mobile_token" field.
  String? _mobileToken;
  String get mobileToken => _mobileToken ?? '';
  set mobileToken(String? val) => _mobileToken = val;

  bool hasMobileToken() => _mobileToken != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "active" field.
  String? _active;
  String get active => _active ?? '';
  set active(String? val) => _active = val;

  bool hasActive() => _active != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  set dob(String? val) => _dob = val;

  bool hasDob() => _dob != null;

  // "profile_picture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  set profilePicture(String? val) => _profilePicture = val;

  bool hasProfilePicture() => _profilePicture != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "sms_notification" field.
  String? _smsNotification;
  String get smsNotification => _smsNotification ?? '';
  set smsNotification(String? val) => _smsNotification = val;

  bool hasSmsNotification() => _smsNotification != null;

  // "push_notification" field.
  String? _pushNotification;
  String get pushNotification => _pushNotification ?? '';
  set pushNotification(String? val) => _pushNotification = val;

  bool hasPushNotification() => _pushNotification != null;

  // "email_notification" field.
  String? _emailNotification;
  String get emailNotification => _emailNotification ?? '';
  set emailNotification(String? val) => _emailNotification = val;

  bool hasEmailNotification() => _emailNotification != null;

  // "wallet_balance" field.
  String? _walletBalance;
  String get walletBalance => _walletBalance ?? '';
  set walletBalance(String? val) => _walletBalance = val;

  bool hasWalletBalance() => _walletBalance != null;

  // "online" field.
  String? _online;
  String get online => _online ?? '';
  set online(String? val) => _online = val;

  bool hasOnline() => _online != null;

  // "investor" field.
  bool? _investor;
  bool get investor => _investor ?? false;
  set investor(bool? val) => _investor = val;

  bool hasInvestor() => _investor != null;

  // "payment_methods" field.
  String? _paymentMethods;
  String get paymentMethods => _paymentMethods ?? '';
  set paymentMethods(String? val) => _paymentMethods = val;

  bool hasPaymentMethods() => _paymentMethods != null;

  // "added_address" field.
  bool? _addedAddress;
  bool get addedAddress => _addedAddress ?? false;
  set addedAddress(bool? val) => _addedAddress = val;

  bool hasAddedAddress() => _addedAddress != null;

  static GetProfileStruct fromMap(Map<String, dynamic> data) =>
      GetProfileStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        firstName: data['first_name'] as String?,
        username: data['username'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        emailVerifiedAt: data['email_verified_at'] as String?,
        phoneVerifiedAt: data['phone_verified_at'] as String?,
        acceptTc: castToType<int>(data['accept_tc']),
        referralCode: data['referral_code'] as String?,
        uid: data['uid'] as String?,
        address: data['address'] as String?,
        longitude: data['longitude'] as String?,
        latitude: data['latitude'] as String?,
        onboardingStage: data['onboarding_stage'] as String?,
        status: data['status'] as String?,
        state: data['state'] as String?,
        lga: data['lga'] as String?,
        role: data['role'] as String?,
        disabled: castToType<int>(data['disabled']),
        lastLoginDate: data['last_login_date'] as String?,
        bankAccount: data['bank_account'] is BankAccountStruct
            ? data['bank_account']
            : BankAccountStruct.maybeFromMap(data['bank_account']),
        savingPlans: getStructList(
          data['saving_plans'],
          SavingPlansStruct.fromMap,
        ),
        nin: data['nin'] as String?,
        bvn: data['bvn'] as String?,
        mobileToken: data['mobile_token'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        active: data['active'] as String?,
        dob: data['dob'] as String?,
        profilePicture: data['profile_picture'] as String?,
        gender: data['gender'] as String?,
        smsNotification: data['sms_notification'] as String?,
        pushNotification: data['push_notification'] as String?,
        emailNotification: data['email_notification'] as String?,
        walletBalance: data['wallet_balance'] as String?,
        online: data['online'] as String?,
        investor: data['investor'] as bool?,
        paymentMethods: data['payment_methods'] as String?,
        addedAddress: data['added_address'] as bool?,
      );

  static GetProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? GetProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'first_name': _firstName,
        'username': _username,
        'email': _email,
        'phone': _phone,
        'email_verified_at': _emailVerifiedAt,
        'phone_verified_at': _phoneVerifiedAt,
        'accept_tc': _acceptTc,
        'referral_code': _referralCode,
        'uid': _uid,
        'address': _address,
        'longitude': _longitude,
        'latitude': _latitude,
        'onboarding_stage': _onboardingStage,
        'status': _status,
        'state': _state,
        'lga': _lga,
        'role': _role,
        'disabled': _disabled,
        'last_login_date': _lastLoginDate,
        'bank_account': _bankAccount?.toMap(),
        'saving_plans': _savingPlans?.map((e) => e.toMap()).toList(),
        'nin': _nin,
        'bvn': _bvn,
        'mobile_token': _mobileToken,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'active': _active,
        'dob': _dob,
        'profile_picture': _profilePicture,
        'gender': _gender,
        'sms_notification': _smsNotification,
        'push_notification': _pushNotification,
        'email_notification': _emailNotification,
        'wallet_balance': _walletBalance,
        'online': _online,
        'investor': _investor,
        'payment_methods': _paymentMethods,
        'added_address': _addedAddress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'email_verified_at': serializeParam(
          _emailVerifiedAt,
          ParamType.String,
        ),
        'phone_verified_at': serializeParam(
          _phoneVerifiedAt,
          ParamType.String,
        ),
        'accept_tc': serializeParam(
          _acceptTc,
          ParamType.int,
        ),
        'referral_code': serializeParam(
          _referralCode,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'onboarding_stage': serializeParam(
          _onboardingStage,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'lga': serializeParam(
          _lga,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'disabled': serializeParam(
          _disabled,
          ParamType.int,
        ),
        'last_login_date': serializeParam(
          _lastLoginDate,
          ParamType.String,
        ),
        'bank_account': serializeParam(
          _bankAccount,
          ParamType.DataStruct,
        ),
        'saving_plans': serializeParam(
          _savingPlans,
          ParamType.DataStruct,
          isList: true,
        ),
        'nin': serializeParam(
          _nin,
          ParamType.String,
        ),
        'bvn': serializeParam(
          _bvn,
          ParamType.String,
        ),
        'mobile_token': serializeParam(
          _mobileToken,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.String,
        ),
        'dob': serializeParam(
          _dob,
          ParamType.String,
        ),
        'profile_picture': serializeParam(
          _profilePicture,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'sms_notification': serializeParam(
          _smsNotification,
          ParamType.String,
        ),
        'push_notification': serializeParam(
          _pushNotification,
          ParamType.String,
        ),
        'email_notification': serializeParam(
          _emailNotification,
          ParamType.String,
        ),
        'wallet_balance': serializeParam(
          _walletBalance,
          ParamType.String,
        ),
        'online': serializeParam(
          _online,
          ParamType.String,
        ),
        'investor': serializeParam(
          _investor,
          ParamType.bool,
        ),
        'payment_methods': serializeParam(
          _paymentMethods,
          ParamType.String,
        ),
        'added_address': serializeParam(
          _addedAddress,
          ParamType.bool,
        ),
      }.withoutNulls;

  static GetProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetProfileStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        emailVerifiedAt: deserializeParam(
          data['email_verified_at'],
          ParamType.String,
          false,
        ),
        phoneVerifiedAt: deserializeParam(
          data['phone_verified_at'],
          ParamType.String,
          false,
        ),
        acceptTc: deserializeParam(
          data['accept_tc'],
          ParamType.int,
          false,
        ),
        referralCode: deserializeParam(
          data['referral_code'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.String,
          false,
        ),
        onboardingStage: deserializeParam(
          data['onboarding_stage'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        lga: deserializeParam(
          data['lga'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        disabled: deserializeParam(
          data['disabled'],
          ParamType.int,
          false,
        ),
        lastLoginDate: deserializeParam(
          data['last_login_date'],
          ParamType.String,
          false,
        ),
        bankAccount: deserializeStructParam(
          data['bank_account'],
          ParamType.DataStruct,
          false,
          structBuilder: BankAccountStruct.fromSerializableMap,
        ),
        savingPlans: deserializeStructParam<SavingPlansStruct>(
          data['saving_plans'],
          ParamType.DataStruct,
          true,
          structBuilder: SavingPlansStruct.fromSerializableMap,
        ),
        nin: deserializeParam(
          data['nin'],
          ParamType.String,
          false,
        ),
        bvn: deserializeParam(
          data['bvn'],
          ParamType.String,
          false,
        ),
        mobileToken: deserializeParam(
          data['mobile_token'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.String,
          false,
        ),
        dob: deserializeParam(
          data['dob'],
          ParamType.String,
          false,
        ),
        profilePicture: deserializeParam(
          data['profile_picture'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        smsNotification: deserializeParam(
          data['sms_notification'],
          ParamType.String,
          false,
        ),
        pushNotification: deserializeParam(
          data['push_notification'],
          ParamType.String,
          false,
        ),
        emailNotification: deserializeParam(
          data['email_notification'],
          ParamType.String,
          false,
        ),
        walletBalance: deserializeParam(
          data['wallet_balance'],
          ParamType.String,
          false,
        ),
        online: deserializeParam(
          data['online'],
          ParamType.String,
          false,
        ),
        investor: deserializeParam(
          data['investor'],
          ParamType.bool,
          false,
        ),
        paymentMethods: deserializeParam(
          data['payment_methods'],
          ParamType.String,
          false,
        ),
        addedAddress: deserializeParam(
          data['added_address'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'GetProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GetProfileStruct &&
        id == other.id &&
        name == other.name &&
        firstName == other.firstName &&
        username == other.username &&
        email == other.email &&
        phone == other.phone &&
        emailVerifiedAt == other.emailVerifiedAt &&
        phoneVerifiedAt == other.phoneVerifiedAt &&
        acceptTc == other.acceptTc &&
        referralCode == other.referralCode &&
        uid == other.uid &&
        address == other.address &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        onboardingStage == other.onboardingStage &&
        status == other.status &&
        state == other.state &&
        lga == other.lga &&
        role == other.role &&
        disabled == other.disabled &&
        lastLoginDate == other.lastLoginDate &&
        bankAccount == other.bankAccount &&
        listEquality.equals(savingPlans, other.savingPlans) &&
        nin == other.nin &&
        bvn == other.bvn &&
        mobileToken == other.mobileToken &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        active == other.active &&
        dob == other.dob &&
        profilePicture == other.profilePicture &&
        gender == other.gender &&
        smsNotification == other.smsNotification &&
        pushNotification == other.pushNotification &&
        emailNotification == other.emailNotification &&
        walletBalance == other.walletBalance &&
        online == other.online &&
        investor == other.investor &&
        paymentMethods == other.paymentMethods &&
        addedAddress == other.addedAddress;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        firstName,
        username,
        email,
        phone,
        emailVerifiedAt,
        phoneVerifiedAt,
        acceptTc,
        referralCode,
        uid,
        address,
        longitude,
        latitude,
        onboardingStage,
        status,
        state,
        lga,
        role,
        disabled,
        lastLoginDate,
        bankAccount,
        savingPlans,
        nin,
        bvn,
        mobileToken,
        createdAt,
        updatedAt,
        active,
        dob,
        profilePicture,
        gender,
        smsNotification,
        pushNotification,
        emailNotification,
        walletBalance,
        online,
        investor,
        paymentMethods,
        addedAddress
      ]);
}

GetProfileStruct createGetProfileStruct({
  int? id,
  String? name,
  String? firstName,
  String? username,
  String? email,
  String? phone,
  String? emailVerifiedAt,
  String? phoneVerifiedAt,
  int? acceptTc,
  String? referralCode,
  String? uid,
  String? address,
  String? longitude,
  String? latitude,
  String? onboardingStage,
  String? status,
  String? state,
  String? lga,
  String? role,
  int? disabled,
  String? lastLoginDate,
  BankAccountStruct? bankAccount,
  String? nin,
  String? bvn,
  String? mobileToken,
  String? createdAt,
  String? updatedAt,
  String? active,
  String? dob,
  String? profilePicture,
  String? gender,
  String? smsNotification,
  String? pushNotification,
  String? emailNotification,
  String? walletBalance,
  String? online,
  bool? investor,
  String? paymentMethods,
  bool? addedAddress,
}) =>
    GetProfileStruct(
      id: id,
      name: name,
      firstName: firstName,
      username: username,
      email: email,
      phone: phone,
      emailVerifiedAt: emailVerifiedAt,
      phoneVerifiedAt: phoneVerifiedAt,
      acceptTc: acceptTc,
      referralCode: referralCode,
      uid: uid,
      address: address,
      longitude: longitude,
      latitude: latitude,
      onboardingStage: onboardingStage,
      status: status,
      state: state,
      lga: lga,
      role: role,
      disabled: disabled,
      lastLoginDate: lastLoginDate,
      bankAccount: bankAccount ?? BankAccountStruct(),
      nin: nin,
      bvn: bvn,
      mobileToken: mobileToken,
      createdAt: createdAt,
      updatedAt: updatedAt,
      active: active,
      dob: dob,
      profilePicture: profilePicture,
      gender: gender,
      smsNotification: smsNotification,
      pushNotification: pushNotification,
      emailNotification: emailNotification,
      walletBalance: walletBalance,
      online: online,
      investor: investor,
      paymentMethods: paymentMethods,
      addedAddress: addedAddress,
    );
