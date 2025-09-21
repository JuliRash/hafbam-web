// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsStruct extends BaseStruct {
  TransactionsStruct({
    String? status,
    String? productName,
    String? uniqueElement,
    String? unitPrice,
    int? quantity,
    String? serviceVerification,
    String? channel,
    double? commission,
    double? totalAmount,
    String? discount,
    String? type,
    String? email,
    String? phone,
    String? name,
    int? convinienceFee,
    String? amount,
    String? platform,
    String? method,
    String? transactionId,
    CommissionDetailsStruct? commissionDetails,
  })  : _status = status,
        _productName = productName,
        _uniqueElement = uniqueElement,
        _unitPrice = unitPrice,
        _quantity = quantity,
        _serviceVerification = serviceVerification,
        _channel = channel,
        _commission = commission,
        _totalAmount = totalAmount,
        _discount = discount,
        _type = type,
        _email = email,
        _phone = phone,
        _name = name,
        _convinienceFee = convinienceFee,
        _amount = amount,
        _platform = platform,
        _method = method,
        _transactionId = transactionId,
        _commissionDetails = commissionDetails;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "unique_element" field.
  String? _uniqueElement;
  String get uniqueElement => _uniqueElement ?? '';
  set uniqueElement(String? val) => _uniqueElement = val;

  bool hasUniqueElement() => _uniqueElement != null;

  // "unit_price" field.
  String? _unitPrice;
  String get unitPrice => _unitPrice ?? '';
  set unitPrice(String? val) => _unitPrice = val;

  bool hasUnitPrice() => _unitPrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "service_verification" field.
  String? _serviceVerification;
  String get serviceVerification => _serviceVerification ?? '';
  set serviceVerification(String? val) => _serviceVerification = val;

  bool hasServiceVerification() => _serviceVerification != null;

  // "channel" field.
  String? _channel;
  String get channel => _channel ?? '';
  set channel(String? val) => _channel = val;

  bool hasChannel() => _channel != null;

  // "commission" field.
  double? _commission;
  double get commission => _commission ?? 0.0;
  set commission(double? val) => _commission = val;

  void incrementCommission(double amount) => commission = commission + amount;

  bool hasCommission() => _commission != null;

  // "total_amount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  // "discount" field.
  String? _discount;
  String get discount => _discount ?? '';
  set discount(String? val) => _discount = val;

  bool hasDiscount() => _discount != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "convinience_fee" field.
  int? _convinienceFee;
  int get convinienceFee => _convinienceFee ?? 0;
  set convinienceFee(int? val) => _convinienceFee = val;

  void incrementConvinienceFee(int amount) =>
      convinienceFee = convinienceFee + amount;

  bool hasConvinienceFee() => _convinienceFee != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "platform" field.
  String? _platform;
  String get platform => _platform ?? '';
  set platform(String? val) => _platform = val;

  bool hasPlatform() => _platform != null;

  // "method" field.
  String? _method;
  String get method => _method ?? '';
  set method(String? val) => _method = val;

  bool hasMethod() => _method != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  // "commission_details" field.
  CommissionDetailsStruct? _commissionDetails;
  CommissionDetailsStruct get commissionDetails =>
      _commissionDetails ?? CommissionDetailsStruct();
  set commissionDetails(CommissionDetailsStruct? val) =>
      _commissionDetails = val;

  void updateCommissionDetails(Function(CommissionDetailsStruct) updateFn) {
    updateFn(_commissionDetails ??= CommissionDetailsStruct());
  }

  bool hasCommissionDetails() => _commissionDetails != null;

  static TransactionsStruct fromMap(Map<String, dynamic> data) =>
      TransactionsStruct(
        status: data['status'] as String?,
        productName: data['product_name'] as String?,
        uniqueElement: data['unique_element'] as String?,
        unitPrice: data['unit_price'] as String?,
        quantity: castToType<int>(data['quantity']),
        serviceVerification: data['service_verification'] as String?,
        channel: data['channel'] as String?,
        commission: castToType<double>(data['commission']),
        totalAmount: castToType<double>(data['total_amount']),
        discount: data['discount'] as String?,
        type: data['type'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        name: data['name'] as String?,
        convinienceFee: castToType<int>(data['convinience_fee']),
        amount: data['amount'] as String?,
        platform: data['platform'] as String?,
        method: data['method'] as String?,
        transactionId: data['transactionId'] as String?,
        commissionDetails: data['commission_details'] is CommissionDetailsStruct
            ? data['commission_details']
            : CommissionDetailsStruct.maybeFromMap(data['commission_details']),
      );

  static TransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'product_name': _productName,
        'unique_element': _uniqueElement,
        'unit_price': _unitPrice,
        'quantity': _quantity,
        'service_verification': _serviceVerification,
        'channel': _channel,
        'commission': _commission,
        'total_amount': _totalAmount,
        'discount': _discount,
        'type': _type,
        'email': _email,
        'phone': _phone,
        'name': _name,
        'convinience_fee': _convinienceFee,
        'amount': _amount,
        'platform': _platform,
        'method': _method,
        'transactionId': _transactionId,
        'commission_details': _commissionDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'unique_element': serializeParam(
          _uniqueElement,
          ParamType.String,
        ),
        'unit_price': serializeParam(
          _unitPrice,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'service_verification': serializeParam(
          _serviceVerification,
          ParamType.String,
        ),
        'channel': serializeParam(
          _channel,
          ParamType.String,
        ),
        'commission': serializeParam(
          _commission,
          ParamType.double,
        ),
        'total_amount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'convinience_fee': serializeParam(
          _convinienceFee,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'platform': serializeParam(
          _platform,
          ParamType.String,
        ),
        'method': serializeParam(
          _method,
          ParamType.String,
        ),
        'transactionId': serializeParam(
          _transactionId,
          ParamType.String,
        ),
        'commission_details': serializeParam(
          _commissionDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TransactionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionsStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        uniqueElement: deserializeParam(
          data['unique_element'],
          ParamType.String,
          false,
        ),
        unitPrice: deserializeParam(
          data['unit_price'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        serviceVerification: deserializeParam(
          data['service_verification'],
          ParamType.String,
          false,
        ),
        channel: deserializeParam(
          data['channel'],
          ParamType.String,
          false,
        ),
        commission: deserializeParam(
          data['commission'],
          ParamType.double,
          false,
        ),
        totalAmount: deserializeParam(
          data['total_amount'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        convinienceFee: deserializeParam(
          data['convinience_fee'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.String,
          false,
        ),
        platform: deserializeParam(
          data['platform'],
          ParamType.String,
          false,
        ),
        method: deserializeParam(
          data['method'],
          ParamType.String,
          false,
        ),
        transactionId: deserializeParam(
          data['transactionId'],
          ParamType.String,
          false,
        ),
        commissionDetails: deserializeStructParam(
          data['commission_details'],
          ParamType.DataStruct,
          false,
          structBuilder: CommissionDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionsStruct &&
        status == other.status &&
        productName == other.productName &&
        uniqueElement == other.uniqueElement &&
        unitPrice == other.unitPrice &&
        quantity == other.quantity &&
        serviceVerification == other.serviceVerification &&
        channel == other.channel &&
        commission == other.commission &&
        totalAmount == other.totalAmount &&
        discount == other.discount &&
        type == other.type &&
        email == other.email &&
        phone == other.phone &&
        name == other.name &&
        convinienceFee == other.convinienceFee &&
        amount == other.amount &&
        platform == other.platform &&
        method == other.method &&
        transactionId == other.transactionId &&
        commissionDetails == other.commissionDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        productName,
        uniqueElement,
        unitPrice,
        quantity,
        serviceVerification,
        channel,
        commission,
        totalAmount,
        discount,
        type,
        email,
        phone,
        name,
        convinienceFee,
        amount,
        platform,
        method,
        transactionId,
        commissionDetails
      ]);
}

TransactionsStruct createTransactionsStruct({
  String? status,
  String? productName,
  String? uniqueElement,
  String? unitPrice,
  int? quantity,
  String? serviceVerification,
  String? channel,
  double? commission,
  double? totalAmount,
  String? discount,
  String? type,
  String? email,
  String? phone,
  String? name,
  int? convinienceFee,
  String? amount,
  String? platform,
  String? method,
  String? transactionId,
  CommissionDetailsStruct? commissionDetails,
}) =>
    TransactionsStruct(
      status: status,
      productName: productName,
      uniqueElement: uniqueElement,
      unitPrice: unitPrice,
      quantity: quantity,
      serviceVerification: serviceVerification,
      channel: channel,
      commission: commission,
      totalAmount: totalAmount,
      discount: discount,
      type: type,
      email: email,
      phone: phone,
      name: name,
      convinienceFee: convinienceFee,
      amount: amount,
      platform: platform,
      method: method,
      transactionId: transactionId,
      commissionDetails: commissionDetails ?? CommissionDetailsStruct(),
    );
