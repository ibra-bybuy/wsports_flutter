///
//  Generated code. Do not modify.
//  source: proto/comment_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'comment.pb.dart' as $1;

class CommentRequestProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CommentRequestProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'comment'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'token')
    ..aOM<$1.CommentProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'comment',
        subBuilder: $1.CommentProto.create)
    ..hasRequiredFields = false;

  CommentRequestProto._() : super();
  factory CommentRequestProto({
    $core.String? token,
    $1.CommentProto? comment,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    return _result;
  }
  factory CommentRequestProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CommentRequestProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CommentRequestProto clone() => CommentRequestProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CommentRequestProto copyWith(void Function(CommentRequestProto) updates) =>
      super.copyWith((message) => updates(message as CommentRequestProto))
          as CommentRequestProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommentRequestProto create() => CommentRequestProto._();
  CommentRequestProto createEmptyInstance() => create();
  static $pb.PbList<CommentRequestProto> createRepeated() =>
      $pb.PbList<CommentRequestProto>();
  @$core.pragma('dart2js:noInline')
  static CommentRequestProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommentRequestProto>(create);
  static CommentRequestProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $1.CommentProto get comment => $_getN(1);
  @$pb.TagNumber(2)
  set comment($1.CommentProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => clearField(2);
  @$pb.TagNumber(2)
  $1.CommentProto ensureComment() => $_ensure(1);
}
