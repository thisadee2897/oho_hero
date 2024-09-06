// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectTypeModel _$ProjectTypeModelFromJson(Map<String, dynamic> json) {
  return _ProjectTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectTypeModel {
  @JsonKey(name: 'master_project_type_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_project_type_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_active_flag')
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_project_type_name_eng')
  String? get nameEN => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_project_type_prefix')
  String? get prefix => throw _privateConstructorUsedError;

  /// Serializes this ProjectTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectTypeModelCopyWith<ProjectTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTypeModelCopyWith<$Res> {
  factory $ProjectTypeModelCopyWith(
          ProjectTypeModel value, $Res Function(ProjectTypeModel) then) =
      _$ProjectTypeModelCopyWithImpl<$Res, ProjectTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'master_project_type_id') String? id,
      @JsonKey(name: 'master_project_type_name') String? name,
      @JsonKey(name: 'master_active_flag') bool? active,
      @JsonKey(name: 'master_project_type_name_eng') String? nameEN,
      @JsonKey(name: 'master_project_type_prefix') String? prefix});
}

/// @nodoc
class _$ProjectTypeModelCopyWithImpl<$Res, $Val extends ProjectTypeModel>
    implements $ProjectTypeModelCopyWith<$Res> {
  _$ProjectTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? active = freezed,
    Object? nameEN = freezed,
    Object? prefix = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      nameEN: freezed == nameEN
          ? _value.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectTypeModelImplCopyWith<$Res>
    implements $ProjectTypeModelCopyWith<$Res> {
  factory _$$ProjectTypeModelImplCopyWith(_$ProjectTypeModelImpl value,
          $Res Function(_$ProjectTypeModelImpl) then) =
      __$$ProjectTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'master_project_type_id') String? id,
      @JsonKey(name: 'master_project_type_name') String? name,
      @JsonKey(name: 'master_active_flag') bool? active,
      @JsonKey(name: 'master_project_type_name_eng') String? nameEN,
      @JsonKey(name: 'master_project_type_prefix') String? prefix});
}

/// @nodoc
class __$$ProjectTypeModelImplCopyWithImpl<$Res>
    extends _$ProjectTypeModelCopyWithImpl<$Res, _$ProjectTypeModelImpl>
    implements _$$ProjectTypeModelImplCopyWith<$Res> {
  __$$ProjectTypeModelImplCopyWithImpl(_$ProjectTypeModelImpl _value,
      $Res Function(_$ProjectTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? active = freezed,
    Object? nameEN = freezed,
    Object? prefix = freezed,
  }) {
    return _then(_$ProjectTypeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      nameEN: freezed == nameEN
          ? _value.nameEN
          : nameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectTypeModelImpl implements _ProjectTypeModel {
  const _$ProjectTypeModelImpl(
      {@JsonKey(name: 'master_project_type_id') this.id,
      @JsonKey(name: 'master_project_type_name') this.name,
      @JsonKey(name: 'master_active_flag') this.active,
      @JsonKey(name: 'master_project_type_name_eng') this.nameEN,
      @JsonKey(name: 'master_project_type_prefix') this.prefix});

  factory _$ProjectTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'master_project_type_id')
  final String? id;
  @override
  @JsonKey(name: 'master_project_type_name')
  final String? name;
  @override
  @JsonKey(name: 'master_active_flag')
  final bool? active;
  @override
  @JsonKey(name: 'master_project_type_name_eng')
  final String? nameEN;
  @override
  @JsonKey(name: 'master_project_type_prefix')
  final String? prefix;

  @override
  String toString() {
    return 'ProjectTypeModel(id: $id, name: $name, active: $active, nameEN: $nameEN, prefix: $prefix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.nameEN, nameEN) || other.nameEN == nameEN) &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, active, nameEN, prefix);

  /// Create a copy of ProjectTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectTypeModelImplCopyWith<_$ProjectTypeModelImpl> get copyWith =>
      __$$ProjectTypeModelImplCopyWithImpl<_$ProjectTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectTypeModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectTypeModel implements ProjectTypeModel {
  const factory _ProjectTypeModel(
          {@JsonKey(name: 'master_project_type_id') final String? id,
          @JsonKey(name: 'master_project_type_name') final String? name,
          @JsonKey(name: 'master_active_flag') final bool? active,
          @JsonKey(name: 'master_project_type_name_eng') final String? nameEN,
          @JsonKey(name: 'master_project_type_prefix') final String? prefix}) =
      _$ProjectTypeModelImpl;

  factory _ProjectTypeModel.fromJson(Map<String, dynamic> json) =
      _$ProjectTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'master_project_type_id')
  String? get id;
  @override
  @JsonKey(name: 'master_project_type_name')
  String? get name;
  @override
  @JsonKey(name: 'master_active_flag')
  bool? get active;
  @override
  @JsonKey(name: 'master_project_type_name_eng')
  String? get nameEN;
  @override
  @JsonKey(name: 'master_project_type_prefix')
  String? get prefix;

  /// Create a copy of ProjectTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectTypeModelImplCopyWith<_$ProjectTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
