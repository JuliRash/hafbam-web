// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationStruct extends BaseStruct {
  NotificationStruct({
    List<NotisStruct>? notis,
    LinksStruct? links,
    MetaStruct? meta,
  })  : _notis = notis,
        _links = links,
        _meta = meta;

  // "notis" field.
  List<NotisStruct>? _notis;
  List<NotisStruct> get notis => _notis ?? const [];
  set notis(List<NotisStruct>? val) => _notis = val;

  void updateNotis(Function(List<NotisStruct>) updateFn) {
    updateFn(_notis ??= []);
  }

  bool hasNotis() => _notis != null;

  // "links" field.
  LinksStruct? _links;
  LinksStruct get links => _links ?? LinksStruct();
  set links(LinksStruct? val) => _links = val;

  void updateLinks(Function(LinksStruct) updateFn) {
    updateFn(_links ??= LinksStruct());
  }

  bool hasLinks() => _links != null;

  // "meta" field.
  MetaStruct? _meta;
  MetaStruct get meta => _meta ?? MetaStruct();
  set meta(MetaStruct? val) => _meta = val;

  void updateMeta(Function(MetaStruct) updateFn) {
    updateFn(_meta ??= MetaStruct());
  }

  bool hasMeta() => _meta != null;

  static NotificationStruct fromMap(Map<String, dynamic> data) =>
      NotificationStruct(
        notis: getStructList(
          data['notis'],
          NotisStruct.fromMap,
        ),
        links: data['links'] is LinksStruct
            ? data['links']
            : LinksStruct.maybeFromMap(data['links']),
        meta: data['meta'] is MetaStruct
            ? data['meta']
            : MetaStruct.maybeFromMap(data['meta']),
      );

  static NotificationStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'notis': _notis?.map((e) => e.toMap()).toList(),
        'links': _links?.toMap(),
        'meta': _meta?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'notis': serializeParam(
          _notis,
          ParamType.DataStruct,
          isList: true,
        ),
        'links': serializeParam(
          _links,
          ParamType.DataStruct,
        ),
        'meta': serializeParam(
          _meta,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static NotificationStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationStruct(
        notis: deserializeStructParam<NotisStruct>(
          data['notis'],
          ParamType.DataStruct,
          true,
          structBuilder: NotisStruct.fromSerializableMap,
        ),
        links: deserializeStructParam(
          data['links'],
          ParamType.DataStruct,
          false,
          structBuilder: LinksStruct.fromSerializableMap,
        ),
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NotificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NotificationStruct &&
        listEquality.equals(notis, other.notis) &&
        links == other.links &&
        meta == other.meta;
  }

  @override
  int get hashCode => const ListEquality().hash([notis, links, meta]);
}

NotificationStruct createNotificationStruct({
  LinksStruct? links,
  MetaStruct? meta,
}) =>
    NotificationStruct(
      links: links ?? LinksStruct(),
      meta: meta ?? MetaStruct(),
    );
