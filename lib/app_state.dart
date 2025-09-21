import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _isRead = await secureStorage.getBool('ff_isRead') ?? _isRead;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_user') != null) {
        try {
          _user = jsonDecode(await secureStorage.getString('ff_user') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _token = await secureStorage.getString('ff_token') ?? _token;
    });
    await _safeInitAsync(() async {
      _selectedAirtimeAmount =
          await secureStorage.getString('ff_selectedAirtimeAmount') ??
              _selectedAirtimeAmount;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_powerProvider') != null) {
        try {
          _powerProvider = jsonDecode(
              await secureStorage.getString('ff_powerProvider') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_DataPlans') != null) {
        try {
          _DataPlans =
              jsonDecode(await secureStorage.getString('ff_DataPlans') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _monthly = await secureStorage.getString('ff_monthly') ?? _monthly;
    });
    await _safeInitAsync(() async {
      _activePlan =
          await secureStorage.getStringList('ff_activePlan') ?? _activePlan;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_readNotification') != null) {
        try {
          _readNotification = jsonDecode(
              await secureStorage.getString('ff_readNotification') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _isBalanceVisible = true;
  bool get isBalanceVisible => _isBalanceVisible;
  set isBalanceVisible(bool value) {
    _isBalanceVisible = value;
  }

  bool _isRead = false;
  bool get isRead => _isRead;
  set isRead(bool value) {
    _isRead = value;
    secureStorage.setBool('ff_isRead', value);
  }

  void deleteIsRead() {
    secureStorage.delete(key: 'ff_isRead');
  }

  bool _isInternalTransfer = true;
  bool get isInternalTransfer => _isInternalTransfer;
  set isInternalTransfer(bool value) {
    _isInternalTransfer = value;
  }

  dynamic _user;
  dynamic get user => _user;
  set user(dynamic value) {
    _user = value;
    secureStorage.setString('ff_user', jsonEncode(value));
  }

  void deleteUser() {
    secureStorage.delete(key: 'ff_user');
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    secureStorage.setString('ff_token', value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_token');
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _otp = '';
  String get otp => _otp;
  set otp(String value) {
    _otp = value;
  }

  String _withAccountName = '';
  String get withAccountName => _withAccountName;
  set withAccountName(String value) {
    _withAccountName = value;
  }

  String _withAccountNumber = '';
  String get withAccountNumber => _withAccountNumber;
  set withAccountNumber(String value) {
    _withAccountNumber = value;
  }

  String _withAmount = '';
  String get withAmount => _withAmount;
  set withAmount(String value) {
    _withAmount = value;
  }

  String _withBankName = '';
  String get withBankName => _withBankName;
  set withBankName(String value) {
    _withBankName = value;
  }

  String _airtimeNetwork = '';
  String get airtimeNetwork => _airtimeNetwork;
  set airtimeNetwork(String value) {
    _airtimeNetwork = value;
  }

  String _airtimeNumber = '';
  String get airtimeNumber => _airtimeNumber;
  set airtimeNumber(String value) {
    _airtimeNumber = value;
  }

  String _airtimeAmount = '';
  String get airtimeAmount => _airtimeAmount;
  set airtimeAmount(String value) {
    _airtimeAmount = value;
  }

  String _selectedAirtimeAmount = '';
  String get selectedAirtimeAmount => _selectedAirtimeAmount;
  set selectedAirtimeAmount(String value) {
    _selectedAirtimeAmount = value;
    secureStorage.setString('ff_selectedAirtimeAmount', value);
  }

  void deleteSelectedAirtimeAmount() {
    secureStorage.delete(key: 'ff_selectedAirtimeAmount');
  }

  String _selectedDataAmount = '';
  String get selectedDataAmount => _selectedDataAmount;
  set selectedDataAmount(String value) {
    _selectedDataAmount = value;
  }

  String _dataNetwork = '';
  String get dataNetwork => _dataNetwork;
  set dataNetwork(String value) {
    _dataNetwork = value;
  }

  String _dataNumber = '';
  String get dataNumber => _dataNumber;
  set dataNumber(String value) {
    _dataNumber = value;
  }

  String _dataAmount = '';
  String get dataAmount => _dataAmount;
  set dataAmount(String value) {
    _dataAmount = value;
  }

  String _selectedDataPlan = '';
  String get selectedDataPlan => _selectedDataPlan;
  set selectedDataPlan(String value) {
    _selectedDataPlan = value;
  }

  dynamic _transType;
  dynamic get transType => _transType;
  set transType(dynamic value) {
    _transType = value;
  }

  dynamic _transDate;
  dynamic get transDate => _transDate;
  set transDate(dynamic value) {
    _transDate = value;
  }

  dynamic _transAmt;
  dynamic get transAmt => _transAmt;
  set transAmt(dynamic value) {
    _transAmt = value;
  }

  dynamic _powerProvider;
  dynamic get powerProvider => _powerProvider;
  set powerProvider(dynamic value) {
    _powerProvider = value;
    secureStorage.setString('ff_powerProvider', jsonEncode(value));
  }

  void deletePowerProvider() {
    secureStorage.delete(key: 'ff_powerProvider');
  }

  dynamic _DataPlans;
  dynamic get DataPlans => _DataPlans;
  set DataPlans(dynamic value) {
    _DataPlans = value;
    secureStorage.setString('ff_DataPlans', jsonEncode(value));
  }

  void deleteDataPlans() {
    secureStorage.delete(key: 'ff_DataPlans');
  }

  String _dataName = '';
  String get dataName => _dataName;
  set dataName(String value) {
    _dataName = value;
  }

  String _dataCode = '';
  String get dataCode => _dataCode;
  set dataCode(String value) {
    _dataCode = value;
  }

  String _dataAmt = '';
  String get dataAmt => _dataAmt;
  set dataAmt(String value) {
    _dataAmt = value;
  }

  List<String> _providerList = [];
  List<String> get providerList => _providerList;
  set providerList(List<String> value) {
    _providerList = value;
  }

  void addToProviderList(String value) {
    providerList.add(value);
  }

  void removeFromProviderList(String value) {
    providerList.remove(value);
  }

  void removeAtIndexFromProviderList(int index) {
    providerList.removeAt(index);
  }

  void updateProviderListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    providerList[index] = updateFn(_providerList[index]);
  }

  void insertAtIndexInProviderList(int index, String value) {
    providerList.insert(index, value);
  }

  List<String> _cablesubscription = [];
  List<String> get cablesubscription => _cablesubscription;
  set cablesubscription(List<String> value) {
    _cablesubscription = value;
  }

  void addToCablesubscription(String value) {
    cablesubscription.add(value);
  }

  void removeFromCablesubscription(String value) {
    cablesubscription.remove(value);
  }

  void removeAtIndexFromCablesubscription(int index) {
    cablesubscription.removeAt(index);
  }

  void updateCablesubscriptionAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cablesubscription[index] = updateFn(_cablesubscription[index]);
  }

  void insertAtIndexInCablesubscription(int index, String value) {
    cablesubscription.insert(index, value);
  }

  dynamic _savingsMonthly;
  dynamic get savingsMonthly => _savingsMonthly;
  set savingsMonthly(dynamic value) {
    _savingsMonthly = value;
  }

  String _monthly = 'monthly';
  String get monthly => _monthly;
  set monthly(String value) {
    _monthly = value;
    secureStorage.setString('ff_monthly', value);
  }

  void deleteMonthly() {
    secureStorage.delete(key: 'ff_monthly');
  }

  List<String> _activePlan = [];
  List<String> get activePlan => _activePlan;
  set activePlan(List<String> value) {
    _activePlan = value;
    secureStorage.setStringList('ff_activePlan', value);
  }

  void deleteActivePlan() {
    secureStorage.delete(key: 'ff_activePlan');
  }

  void addToActivePlan(String value) {
    activePlan.add(value);
    secureStorage.setStringList('ff_activePlan', _activePlan);
  }

  void removeFromActivePlan(String value) {
    activePlan.remove(value);
    secureStorage.setStringList('ff_activePlan', _activePlan);
  }

  void removeAtIndexFromActivePlan(int index) {
    activePlan.removeAt(index);
    secureStorage.setStringList('ff_activePlan', _activePlan);
  }

  void updateActivePlanAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    activePlan[index] = updateFn(_activePlan[index]);
    secureStorage.setStringList('ff_activePlan', _activePlan);
  }

  void insertAtIndexInActivePlan(int index, String value) {
    activePlan.insert(index, value);
    secureStorage.setStringList('ff_activePlan', _activePlan);
  }

  List<dynamic> _notisData = [];
  List<dynamic> get notisData => _notisData;
  set notisData(List<dynamic> value) {
    _notisData = value;
  }

  void addToNotisData(dynamic value) {
    notisData.add(value);
  }

  void removeFromNotisData(dynamic value) {
    notisData.remove(value);
  }

  void removeAtIndexFromNotisData(int index) {
    notisData.removeAt(index);
  }

  void updateNotisDataAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    notisData[index] = updateFn(_notisData[index]);
  }

  void insertAtIndexInNotisData(int index, dynamic value) {
    notisData.insert(index, value);
  }

  dynamic _readNotification;
  dynamic get readNotification => _readNotification;
  set readNotification(dynamic value) {
    _readNotification = value;
    secureStorage.setString('ff_readNotification', jsonEncode(value));
  }

  void deleteReadNotification() {
    secureStorage.delete(key: 'ff_readNotification');
  }

  String _NotisId = '';
  String get NotisId => _NotisId;
  set NotisId(String value) {
    _NotisId = value;
  }

  String _NotisTitle = '';
  String get NotisTitle => _NotisTitle;
  set NotisTitle(String value) {
    _NotisTitle = value;
  }

  String _NotisMessage = '';
  String get NotisMessage => _NotisMessage;
  set NotisMessage(String value) {
    _NotisMessage = value;
  }

  String _NotisDate = '';
  String get NotisDate => _NotisDate;
  set NotisDate(String value) {
    _NotisDate = value;
  }

  String _selectedBank = '';
  String get selectedBank => _selectedBank;
  set selectedBank(String value) {
    _selectedBank = value;
  }

  String _withAzaName = '';
  String get withAzaName => _withAzaName;
  set withAzaName(String value) {
    _withAzaName = value;
  }

  String _withAza = '';
  String get withAza => _withAza;
  set withAza(String value) {
    _withAza = value;
  }

  String _withAmt = '';
  String get withAmt => _withAmt;
  set withAmt(String value) {
    _withAmt = value;
  }

  bool _pinSet = false;
  bool get pinSet => _pinSet;
  set pinSet(bool value) {
    _pinSet = value;
  }

  String _tfUsername = '';
  String get tfUsername => _tfUsername;
  set tfUsername(String value) {
    _tfUsername = value;
  }

  String _tfAmount = '';
  String get tfAmount => _tfAmount;
  set tfAmount(String value) {
    _tfAmount = value;
  }

  List<dynamic> _cableSub = [];
  List<dynamic> get cableSub => _cableSub;
  set cableSub(List<dynamic> value) {
    _cableSub = value;
  }

  void addToCableSub(dynamic value) {
    cableSub.add(value);
  }

  void removeFromCableSub(dynamic value) {
    cableSub.remove(value);
  }

  void removeAtIndexFromCableSub(int index) {
    cableSub.removeAt(index);
  }

  void updateCableSubAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    cableSub[index] = updateFn(_cableSub[index]);
  }

  void insertAtIndexInCableSub(int index, dynamic value) {
    cableSub.insert(index, value);
  }

  String _selectCable = '';
  String get selectCable => _selectCable;
  set selectCable(String value) {
    _selectCable = value;
  }

  String _selectPrice = '';
  String get selectPrice => _selectPrice;
  set selectPrice(String value) {
    _selectPrice = value;
  }

  String _profilePhoto = '';
  String get profilePhoto => _profilePhoto;
  set profilePhoto(String value) {
    _profilePhoto = value;
  }

  dynamic _selectedPlan;
  dynamic get selectedPlan => _selectedPlan;
  set selectedPlan(dynamic value) {
    _selectedPlan = value;
  }

  String _cables = '';
  String get cables => _cables;
  set cables(String value) {
    _cables = value;
  }

  String _packages = '';
  String get packages => _packages;
  set packages(String value) {
    _packages = value;
  }

  String _smartcardNo = '';
  String get smartcardNo => _smartcardNo;
  set smartcardNo(String value) {
    _smartcardNo = value;
  }

  String _selectedNetwork = 'MTN';
  String get selectedNetwork => _selectedNetwork;
  set selectedNetwork(String value) {
    _selectedNetwork = value;
  }

  dynamic _BuyCable;
  dynamic get BuyCable => _BuyCable;
  set BuyCable(dynamic value) {
    _BuyCable = value;
  }

  dynamic _BuyPower;
  dynamic get BuyPower => _BuyPower;
  set BuyPower(dynamic value) {
    _BuyPower = value;
  }

  String _meterType = '';
  String get meterType => _meterType;
  set meterType(String value) {
    _meterType = value;
  }

  dynamic _BuyData;
  dynamic get BuyData => _BuyData;
  set BuyData(dynamic value) {
    _BuyData = value;
  }

  String _dataPlan = '';
  String get dataPlan => _dataPlan;
  set dataPlan(String value) {
    _dataPlan = value;
  }

  dynamic _BuyAirtime;
  dynamic get BuyAirtime => _BuyAirtime;
  set BuyAirtime(dynamic value) {
    _BuyAirtime = value;
  }

  String _TransactionRef = '';
  String get TransactionRef => _TransactionRef;
  set TransactionRef(String value) {
    _TransactionRef = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
