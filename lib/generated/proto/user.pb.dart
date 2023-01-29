///
//  Generated code. Do not modify.
//  source: proto/user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserProto', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  UserProto._() : super();
  factory UserProto({
    $core.String? name,
    $core.Iterable<$core.int>? avatar,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (avatar != null) {
      _result.avatar.addAll(avatar);
    }
    return _result;
  }
  factory UserProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserProto clone() => UserProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserProto copyWith(void Function(UserProto) updates) => super.copyWith((message) => updates(message as UserProto)) as UserProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserProto create() => UserProto._();
  UserProto createEmptyInstance() => create();
  static $pb.PbList<UserProto> createRepeated() => $pb.PbList<UserProto>();
  @$core.pragma('dart2js:noInline')
  static UserProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProto>(create);
  static UserProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get avatar => $_getList(1);
}

