// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_PostModel',
      json,
      ($checkedConvert) {
        final val = _$_PostModel(
          bodyText: $checkedConvert('body_text', (v) => v as String? ?? ''),
          postedAt: $checkedConvert('posted_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'bodyText': 'body_text', 'postedAt': 'posted_at'},
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'body_text': instance.bodyText,
      'posted_at': instance.postedAt?.toIso8601String(),
    };
