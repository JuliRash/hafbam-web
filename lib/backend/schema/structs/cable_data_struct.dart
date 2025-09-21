// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CableDataStruct extends BaseStruct {
  CableDataStruct({
    String? code,
    ContentStruct? content,
    String? responseDescription,
    String? requestId,
    int? amount,
    String? transactionDate,
    String? purchasedCode,
  })  : _code = code,
        _content = content,
        _responseDescription = responseDescription,
        _requestId = requestId,
        _amount = amount,
        _transactionDate = transactionDate,
        _purchasedCode = purchasedCode;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "content" field.
  ContentStruct? _content;
  ContentStruct get content => _content ?? ContentStruct();
  set content(ContentStruct? val) => _content = val;

  void updateContent(Function(ContentStruct) updateFn) {
    updateFn(_content ??= ContentStruct());
  }

  bool hasContent() => _content != null;

  // "response_description" field.
  String? _responseDescription;
  String get responseDescription => _responseDescription ?? '';
  set responseDescription(String? val) => _responseDescription = val;

  bool hasResponseDescription() => _responseDescription != null;

  // "requestId" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  set requestId(String? val) => _requestId = val;

  bool hasRequestId() => _requestId != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "transaction_date" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "purchased_code" field.
  String? _purchasedCode;
  String get purchasedCode => _purchasedCode ?? '';
  set purchasedCode(String? val) => _purchasedCode = val;

  bool hasPurchasedCode() => _purchasedCode != null;

  static CableDataStruct fromMap(Map<String, dynamic> data) => CableDataStruct(
        code: data['code'] as String?,
        content: data['content'] is ContentStruct
            ? data['content']
            : ContentStruct.maybeFromMap(data['content']),
        responseDescription: data['response_description'] as String?,
        requestId: data['requestId'] as String?,
        amount: castToType<int>(data['amount']),
        transactionDate: data['transaction_date'] as String?,
        purchasedCode: data['purchased_code'] as String?,
      );

  static CableDataStruct? maybeFromMap(dynamic data) => data is Map
      ? CableDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'content': _content?.toMap(),
        'response_description': _responseDescription,
        'requestId': _requestId,
        'amount': _amount,
        'transaction_date': _transactionDate,
        'purchased_code': _purchasedCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.DataStruct,
        ),
        'response_description': serializeParam(
          _responseDescription,
          ParamType.String,
        ),
        'requestId': serializeParam(
          _requestId,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'transaction_date': serializeParam(
          _transactionDate,
          ParamType.String,
        ),
        'purchased_code': serializeParam(
          _purchasedCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static CableDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CableDataStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        content: deserializeStructParam(
          data['content'],
          ParamType.DataStruct,
          false,
          structBuilder: ContentStruct.fromSerializableMap,
        ),
        responseDescription: deserializeParam(
          data['response_description'],
          ParamType.String,
          false,
        ),
        requestId: deserializeParam(
          data['requestId'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        transactionDate: deserializeParam(
          data['transaction_date'],
          ParamType.String,
          false,
        ),
        purchasedCode: deserializeParam(
          data['purchased_code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CableDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CableDataStruct &&
        code == other.code &&
        content == other.content &&
        responseDescription == other.responseDescription &&
        requestId == other.requestId &&
        amount == other.amount &&
        transactionDate == other.transactionDate &&
        purchasedCode == other.purchasedCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        code,
        content,
        responseDescription,
        requestId,
        amount,
        transactionDate,
        purchasedCode
      ]);
}

CableDataStruct createCableDataStruct({
  String? code,
  ContentStruct? content,
  String? responseDescription,
  String? requestId,
  int? amount,
  String? transactionDate,
  String? purchasedCode,
}) =>
    CableDataStruct(
      code: code,
      content: content ?? ContentStruct(),
      responseDescription: responseDescription,
      requestId: requestId,
      amount: amount,
      transactionDate: transactionDate,
      purchasedCode: purchasedCode,
    );
