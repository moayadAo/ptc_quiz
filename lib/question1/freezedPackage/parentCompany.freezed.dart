// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parentCompany.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParentCompany _$ParentCompanyFromJson(Map<String, dynamic> json) {
  return _ParentCompany.fromJson(json);
}

/// @nodoc
mixin _$ParentCompany {
  Company get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCompanyCopyWith<ParentCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCompanyCopyWith<$Res> {
  factory $ParentCompanyCopyWith(
          ParentCompany value, $Res Function(ParentCompany) then) =
      _$ParentCompanyCopyWithImpl<$Res, ParentCompany>;
  @useResult
  $Res call({Company company});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$ParentCompanyCopyWithImpl<$Res, $Val extends ParentCompany>
    implements $ParentCompanyCopyWith<$Res> {
  _$ParentCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParentCompanyImplCopyWith<$Res>
    implements $ParentCompanyCopyWith<$Res> {
  factory _$$ParentCompanyImplCopyWith(
          _$ParentCompanyImpl value, $Res Function(_$ParentCompanyImpl) then) =
      __$$ParentCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Company company});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$ParentCompanyImplCopyWithImpl<$Res>
    extends _$ParentCompanyCopyWithImpl<$Res, _$ParentCompanyImpl>
    implements _$$ParentCompanyImplCopyWith<$Res> {
  __$$ParentCompanyImplCopyWithImpl(
      _$ParentCompanyImpl _value, $Res Function(_$ParentCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$ParentCompanyImpl(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentCompanyImpl
    with DiagnosticableTreeMixin
    implements _ParentCompany {
  const _$ParentCompanyImpl({required this.company});

  factory _$ParentCompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentCompanyImplFromJson(json);

  @override
  final Company company;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParentCompany(company: $company)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParentCompany'))
      ..add(DiagnosticsProperty('company', company));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentCompanyImpl &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentCompanyImplCopyWith<_$ParentCompanyImpl> get copyWith =>
      __$$ParentCompanyImplCopyWithImpl<_$ParentCompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentCompanyImplToJson(
      this,
    );
  }
}

abstract class _ParentCompany implements ParentCompany {
  const factory _ParentCompany({required final Company company}) =
      _$ParentCompanyImpl;

  factory _ParentCompany.fromJson(Map<String, dynamic> json) =
      _$ParentCompanyImpl.fromJson;

  @override
  Company get company;
  @override
  @JsonKey(ignore: true)
  _$$ParentCompanyImplCopyWith<_$ParentCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
