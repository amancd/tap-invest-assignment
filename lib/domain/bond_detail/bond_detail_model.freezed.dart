// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BondDetailModel _$BondDetailModelFromJson(Map<String, dynamic> json) {
  return _BondDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BondDetailModel {
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get isin => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pros_and_cons')
  ProsAndCons get prosAndCons => throw _privateConstructorUsedError;
  Financials get financials => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_details')
  IssuerDetails get issuerDetails => throw _privateConstructorUsedError;

  /// Serializes this BondDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BondDetailModelCopyWith<BondDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondDetailModelCopyWith<$Res> {
  factory $BondDetailModelCopyWith(
    BondDetailModel value,
    $Res Function(BondDetailModel) then,
  ) = _$BondDetailModelCopyWithImpl<$Res, BondDetailModel>;
  @useResult
  $Res call({
    String logo,
    @JsonKey(name: 'company_name') String companyName,
    String description,
    String isin,
    String status,
    @JsonKey(name: 'pros_and_cons') ProsAndCons prosAndCons,
    Financials financials,
    @JsonKey(name: 'issuer_details') IssuerDetails issuerDetails,
  });

  $ProsAndConsCopyWith<$Res> get prosAndCons;
  $FinancialsCopyWith<$Res> get financials;
  $IssuerDetailsCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class _$BondDetailModelCopyWithImpl<$Res, $Val extends BondDetailModel>
    implements $BondDetailModelCopyWith<$Res> {
  _$BondDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(
      _value.copyWith(
            logo:
                null == logo
                    ? _value.logo
                    : logo // ignore: cast_nullable_to_non_nullable
                        as String,
            companyName:
                null == companyName
                    ? _value.companyName
                    : companyName // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            isin:
                null == isin
                    ? _value.isin
                    : isin // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            prosAndCons:
                null == prosAndCons
                    ? _value.prosAndCons
                    : prosAndCons // ignore: cast_nullable_to_non_nullable
                        as ProsAndCons,
            financials:
                null == financials
                    ? _value.financials
                    : financials // ignore: cast_nullable_to_non_nullable
                        as Financials,
            issuerDetails:
                null == issuerDetails
                    ? _value.issuerDetails
                    : issuerDetails // ignore: cast_nullable_to_non_nullable
                        as IssuerDetails,
          )
          as $Val,
    );
  }

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProsAndConsCopyWith<$Res> get prosAndCons {
    return $ProsAndConsCopyWith<$Res>(_value.prosAndCons, (value) {
      return _then(_value.copyWith(prosAndCons: value) as $Val);
    });
  }

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialsCopyWith<$Res> get financials {
    return $FinancialsCopyWith<$Res>(_value.financials, (value) {
      return _then(_value.copyWith(financials: value) as $Val);
    });
  }

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssuerDetailsCopyWith<$Res> get issuerDetails {
    return $IssuerDetailsCopyWith<$Res>(_value.issuerDetails, (value) {
      return _then(_value.copyWith(issuerDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BondDetailModelImplCopyWith<$Res>
    implements $BondDetailModelCopyWith<$Res> {
  factory _$$BondDetailModelImplCopyWith(
    _$BondDetailModelImpl value,
    $Res Function(_$BondDetailModelImpl) then,
  ) = __$$BondDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String logo,
    @JsonKey(name: 'company_name') String companyName,
    String description,
    String isin,
    String status,
    @JsonKey(name: 'pros_and_cons') ProsAndCons prosAndCons,
    Financials financials,
    @JsonKey(name: 'issuer_details') IssuerDetails issuerDetails,
  });

  @override
  $ProsAndConsCopyWith<$Res> get prosAndCons;
  @override
  $FinancialsCopyWith<$Res> get financials;
  @override
  $IssuerDetailsCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class __$$BondDetailModelImplCopyWithImpl<$Res>
    extends _$BondDetailModelCopyWithImpl<$Res, _$BondDetailModelImpl>
    implements _$$BondDetailModelImplCopyWith<$Res> {
  __$$BondDetailModelImplCopyWithImpl(
    _$BondDetailModelImpl _value,
    $Res Function(_$BondDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(
      _$BondDetailModelImpl(
        logo:
            null == logo
                ? _value.logo
                : logo // ignore: cast_nullable_to_non_nullable
                    as String,
        companyName:
            null == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        isin:
            null == isin
                ? _value.isin
                : isin // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        prosAndCons:
            null == prosAndCons
                ? _value.prosAndCons
                : prosAndCons // ignore: cast_nullable_to_non_nullable
                    as ProsAndCons,
        financials:
            null == financials
                ? _value.financials
                : financials // ignore: cast_nullable_to_non_nullable
                    as Financials,
        issuerDetails:
            null == issuerDetails
                ? _value.issuerDetails
                : issuerDetails // ignore: cast_nullable_to_non_nullable
                    as IssuerDetails,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BondDetailModelImpl implements _BondDetailModel {
  const _$BondDetailModelImpl({
    required this.logo,
    @JsonKey(name: 'company_name') required this.companyName,
    required this.description,
    required this.isin,
    required this.status,
    @JsonKey(name: 'pros_and_cons') required this.prosAndCons,
    required this.financials,
    @JsonKey(name: 'issuer_details') required this.issuerDetails,
  });

  factory _$BondDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BondDetailModelImplFromJson(json);

  @override
  final String logo;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String description;
  @override
  final String isin;
  @override
  final String status;
  @override
  @JsonKey(name: 'pros_and_cons')
  final ProsAndCons prosAndCons;
  @override
  final Financials financials;
  @override
  @JsonKey(name: 'issuer_details')
  final IssuerDetails issuerDetails;

  @override
  String toString() {
    return 'BondDetailModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BondDetailModelImpl &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prosAndCons, prosAndCons) ||
                other.prosAndCons == prosAndCons) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.issuerDetails, issuerDetails) ||
                other.issuerDetails == issuerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    logo,
    companyName,
    description,
    isin,
    status,
    prosAndCons,
    financials,
    issuerDetails,
  );

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BondDetailModelImplCopyWith<_$BondDetailModelImpl> get copyWith =>
      __$$BondDetailModelImplCopyWithImpl<_$BondDetailModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BondDetailModelImplToJson(this);
  }
}

abstract class _BondDetailModel implements BondDetailModel {
  const factory _BondDetailModel({
    required final String logo,
    @JsonKey(name: 'company_name') required final String companyName,
    required final String description,
    required final String isin,
    required final String status,
    @JsonKey(name: 'pros_and_cons') required final ProsAndCons prosAndCons,
    required final Financials financials,
    @JsonKey(name: 'issuer_details') required final IssuerDetails issuerDetails,
  }) = _$BondDetailModelImpl;

  factory _BondDetailModel.fromJson(Map<String, dynamic> json) =
      _$BondDetailModelImpl.fromJson;

  @override
  String get logo;
  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get description;
  @override
  String get isin;
  @override
  String get status;
  @override
  @JsonKey(name: 'pros_and_cons')
  ProsAndCons get prosAndCons;
  @override
  Financials get financials;
  @override
  @JsonKey(name: 'issuer_details')
  IssuerDetails get issuerDetails;

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BondDetailModelImplCopyWith<_$BondDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProsAndCons _$ProsAndConsFromJson(Map<String, dynamic> json) {
  return _ProsAndCons.fromJson(json);
}

/// @nodoc
mixin _$ProsAndCons {
  List<String> get pros => throw _privateConstructorUsedError;
  List<String> get cons => throw _privateConstructorUsedError;

  /// Serializes this ProsAndCons to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProsAndConsCopyWith<ProsAndCons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProsAndConsCopyWith<$Res> {
  factory $ProsAndConsCopyWith(
    ProsAndCons value,
    $Res Function(ProsAndCons) then,
  ) = _$ProsAndConsCopyWithImpl<$Res, ProsAndCons>;
  @useResult
  $Res call({List<String> pros, List<String> cons});
}

/// @nodoc
class _$ProsAndConsCopyWithImpl<$Res, $Val extends ProsAndCons>
    implements $ProsAndConsCopyWith<$Res> {
  _$ProsAndConsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pros = null, Object? cons = null}) {
    return _then(
      _value.copyWith(
            pros:
                null == pros
                    ? _value.pros
                    : pros // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            cons:
                null == cons
                    ? _value.cons
                    : cons // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProsAndConsImplCopyWith<$Res>
    implements $ProsAndConsCopyWith<$Res> {
  factory _$$ProsAndConsImplCopyWith(
    _$ProsAndConsImpl value,
    $Res Function(_$ProsAndConsImpl) then,
  ) = __$$ProsAndConsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> pros, List<String> cons});
}

/// @nodoc
class __$$ProsAndConsImplCopyWithImpl<$Res>
    extends _$ProsAndConsCopyWithImpl<$Res, _$ProsAndConsImpl>
    implements _$$ProsAndConsImplCopyWith<$Res> {
  __$$ProsAndConsImplCopyWithImpl(
    _$ProsAndConsImpl _value,
    $Res Function(_$ProsAndConsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pros = null, Object? cons = null}) {
    return _then(
      _$ProsAndConsImpl(
        pros:
            null == pros
                ? _value._pros
                : pros // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        cons:
            null == cons
                ? _value._cons
                : cons // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProsAndConsImpl implements _ProsAndCons {
  const _$ProsAndConsImpl({
    required final List<String> pros,
    required final List<String> cons,
  }) : _pros = pros,
       _cons = cons;

  factory _$ProsAndConsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProsAndConsImplFromJson(json);

  final List<String> _pros;
  @override
  List<String> get pros {
    if (_pros is EqualUnmodifiableListView) return _pros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pros);
  }

  final List<String> _cons;
  @override
  List<String> get cons {
    if (_cons is EqualUnmodifiableListView) return _cons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cons);
  }

  @override
  String toString() {
    return 'ProsAndCons(pros: $pros, cons: $cons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProsAndConsImpl &&
            const DeepCollectionEquality().equals(other._pros, _pros) &&
            const DeepCollectionEquality().equals(other._cons, _cons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_pros),
    const DeepCollectionEquality().hash(_cons),
  );

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProsAndConsImplCopyWith<_$ProsAndConsImpl> get copyWith =>
      __$$ProsAndConsImplCopyWithImpl<_$ProsAndConsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProsAndConsImplToJson(this);
  }
}

abstract class _ProsAndCons implements ProsAndCons {
  const factory _ProsAndCons({
    required final List<String> pros,
    required final List<String> cons,
  }) = _$ProsAndConsImpl;

  factory _ProsAndCons.fromJson(Map<String, dynamic> json) =
      _$ProsAndConsImpl.fromJson;

  @override
  List<String> get pros;
  @override
  List<String> get cons;

  /// Create a copy of ProsAndCons
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProsAndConsImplCopyWith<_$ProsAndConsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Financials _$FinancialsFromJson(Map<String, dynamic> json) {
  return _Financials.fromJson(json);
}

/// @nodoc
mixin _$Financials {
  List<MonthValue> get ebitda => throw _privateConstructorUsedError;
  List<MonthValue> get revenue => throw _privateConstructorUsedError;

  /// Serializes this Financials to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancialsCopyWith<Financials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialsCopyWith<$Res> {
  factory $FinancialsCopyWith(
    Financials value,
    $Res Function(Financials) then,
  ) = _$FinancialsCopyWithImpl<$Res, Financials>;
  @useResult
  $Res call({List<MonthValue> ebitda, List<MonthValue> revenue});
}

/// @nodoc
class _$FinancialsCopyWithImpl<$Res, $Val extends Financials>
    implements $FinancialsCopyWith<$Res> {
  _$FinancialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ebitda = null, Object? revenue = null}) {
    return _then(
      _value.copyWith(
            ebitda:
                null == ebitda
                    ? _value.ebitda
                    : ebitda // ignore: cast_nullable_to_non_nullable
                        as List<MonthValue>,
            revenue:
                null == revenue
                    ? _value.revenue
                    : revenue // ignore: cast_nullable_to_non_nullable
                        as List<MonthValue>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FinancialsImplCopyWith<$Res>
    implements $FinancialsCopyWith<$Res> {
  factory _$$FinancialsImplCopyWith(
    _$FinancialsImpl value,
    $Res Function(_$FinancialsImpl) then,
  ) = __$$FinancialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MonthValue> ebitda, List<MonthValue> revenue});
}

/// @nodoc
class __$$FinancialsImplCopyWithImpl<$Res>
    extends _$FinancialsCopyWithImpl<$Res, _$FinancialsImpl>
    implements _$$FinancialsImplCopyWith<$Res> {
  __$$FinancialsImplCopyWithImpl(
    _$FinancialsImpl _value,
    $Res Function(_$FinancialsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ebitda = null, Object? revenue = null}) {
    return _then(
      _$FinancialsImpl(
        ebitda:
            null == ebitda
                ? _value._ebitda
                : ebitda // ignore: cast_nullable_to_non_nullable
                    as List<MonthValue>,
        revenue:
            null == revenue
                ? _value._revenue
                : revenue // ignore: cast_nullable_to_non_nullable
                    as List<MonthValue>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancialsImpl implements _Financials {
  const _$FinancialsImpl({
    required final List<MonthValue> ebitda,
    required final List<MonthValue> revenue,
  }) : _ebitda = ebitda,
       _revenue = revenue;

  factory _$FinancialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialsImplFromJson(json);

  final List<MonthValue> _ebitda;
  @override
  List<MonthValue> get ebitda {
    if (_ebitda is EqualUnmodifiableListView) return _ebitda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ebitda);
  }

  final List<MonthValue> _revenue;
  @override
  List<MonthValue> get revenue {
    if (_revenue is EqualUnmodifiableListView) return _revenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_revenue);
  }

  @override
  String toString() {
    return 'Financials(ebitda: $ebitda, revenue: $revenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialsImpl &&
            const DeepCollectionEquality().equals(other._ebitda, _ebitda) &&
            const DeepCollectionEquality().equals(other._revenue, _revenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_ebitda),
    const DeepCollectionEquality().hash(_revenue),
  );

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialsImplCopyWith<_$FinancialsImpl> get copyWith =>
      __$$FinancialsImplCopyWithImpl<_$FinancialsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancialsImplToJson(this);
  }
}

abstract class _Financials implements Financials {
  const factory _Financials({
    required final List<MonthValue> ebitda,
    required final List<MonthValue> revenue,
  }) = _$FinancialsImpl;

  factory _Financials.fromJson(Map<String, dynamic> json) =
      _$FinancialsImpl.fromJson;

  @override
  List<MonthValue> get ebitda;
  @override
  List<MonthValue> get revenue;

  /// Create a copy of Financials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancialsImplCopyWith<_$FinancialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthValue _$MonthValueFromJson(Map<String, dynamic> json) {
  return _MonthValue.fromJson(json);
}

/// @nodoc
mixin _$MonthValue {
  String get month => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this MonthValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthValueCopyWith<MonthValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthValueCopyWith<$Res> {
  factory $MonthValueCopyWith(
    MonthValue value,
    $Res Function(MonthValue) then,
  ) = _$MonthValueCopyWithImpl<$Res, MonthValue>;
  @useResult
  $Res call({String month, int value});
}

/// @nodoc
class _$MonthValueCopyWithImpl<$Res, $Val extends MonthValue>
    implements $MonthValueCopyWith<$Res> {
  _$MonthValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? month = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as String,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MonthValueImplCopyWith<$Res>
    implements $MonthValueCopyWith<$Res> {
  factory _$$MonthValueImplCopyWith(
    _$MonthValueImpl value,
    $Res Function(_$MonthValueImpl) then,
  ) = __$$MonthValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, int value});
}

/// @nodoc
class __$$MonthValueImplCopyWithImpl<$Res>
    extends _$MonthValueCopyWithImpl<$Res, _$MonthValueImpl>
    implements _$$MonthValueImplCopyWith<$Res> {
  __$$MonthValueImplCopyWithImpl(
    _$MonthValueImpl _value,
    $Res Function(_$MonthValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? month = null, Object? value = null}) {
    return _then(
      _$MonthValueImpl(
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as String,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthValueImpl implements _MonthValue {
  const _$MonthValueImpl({required this.month, required this.value});

  factory _$MonthValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthValueImplFromJson(json);

  @override
  final String month;
  @override
  final int value;

  @override
  String toString() {
    return 'MonthValue(month: $month, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthValueImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, value);

  /// Create a copy of MonthValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthValueImplCopyWith<_$MonthValueImpl> get copyWith =>
      __$$MonthValueImplCopyWithImpl<_$MonthValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthValueImplToJson(this);
  }
}

abstract class _MonthValue implements MonthValue {
  const factory _MonthValue({
    required final String month,
    required final int value,
  }) = _$MonthValueImpl;

  factory _MonthValue.fromJson(Map<String, dynamic> json) =
      _$MonthValueImpl.fromJson;

  @override
  String get month;
  @override
  int get value;

  /// Create a copy of MonthValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthValueImplCopyWith<_$MonthValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IssuerDetails _$IssuerDetailsFromJson(Map<String, dynamic> json) {
  return _IssuerDetails.fromJson(json);
}

/// @nodoc
mixin _$IssuerDetails {
  @JsonKey(name: 'issuer_name')
  String get issuerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_issuer')
  String get typeOfIssuer => throw _privateConstructorUsedError;
  String get sector => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_nature')
  String get issuerNature => throw _privateConstructorUsedError;
  String get cin => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_manager')
  String get leadManager => throw _privateConstructorUsedError;
  String get registrar => throw _privateConstructorUsedError;
  @JsonKey(name: 'debenture_trustee')
  String get debentureTrustee => throw _privateConstructorUsedError;

  /// Serializes this IssuerDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssuerDetailsCopyWith<IssuerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuerDetailsCopyWith<$Res> {
  factory $IssuerDetailsCopyWith(
    IssuerDetails value,
    $Res Function(IssuerDetails) then,
  ) = _$IssuerDetailsCopyWithImpl<$Res, IssuerDetails>;
  @useResult
  $Res call({
    @JsonKey(name: 'issuer_name') String issuerName,
    @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
    String sector,
    String industry,
    @JsonKey(name: 'issuer_nature') String issuerNature,
    String cin,
    @JsonKey(name: 'lead_manager') String leadManager,
    String registrar,
    @JsonKey(name: 'debenture_trustee') String debentureTrustee,
  });
}

/// @nodoc
class _$IssuerDetailsCopyWithImpl<$Res, $Val extends IssuerDetails>
    implements $IssuerDetailsCopyWith<$Res> {
  _$IssuerDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(
      _value.copyWith(
            issuerName:
                null == issuerName
                    ? _value.issuerName
                    : issuerName // ignore: cast_nullable_to_non_nullable
                        as String,
            typeOfIssuer:
                null == typeOfIssuer
                    ? _value.typeOfIssuer
                    : typeOfIssuer // ignore: cast_nullable_to_non_nullable
                        as String,
            sector:
                null == sector
                    ? _value.sector
                    : sector // ignore: cast_nullable_to_non_nullable
                        as String,
            industry:
                null == industry
                    ? _value.industry
                    : industry // ignore: cast_nullable_to_non_nullable
                        as String,
            issuerNature:
                null == issuerNature
                    ? _value.issuerNature
                    : issuerNature // ignore: cast_nullable_to_non_nullable
                        as String,
            cin:
                null == cin
                    ? _value.cin
                    : cin // ignore: cast_nullable_to_non_nullable
                        as String,
            leadManager:
                null == leadManager
                    ? _value.leadManager
                    : leadManager // ignore: cast_nullable_to_non_nullable
                        as String,
            registrar:
                null == registrar
                    ? _value.registrar
                    : registrar // ignore: cast_nullable_to_non_nullable
                        as String,
            debentureTrustee:
                null == debentureTrustee
                    ? _value.debentureTrustee
                    : debentureTrustee // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IssuerDetailsImplCopyWith<$Res>
    implements $IssuerDetailsCopyWith<$Res> {
  factory _$$IssuerDetailsImplCopyWith(
    _$IssuerDetailsImpl value,
    $Res Function(_$IssuerDetailsImpl) then,
  ) = __$$IssuerDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'issuer_name') String issuerName,
    @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
    String sector,
    String industry,
    @JsonKey(name: 'issuer_nature') String issuerNature,
    String cin,
    @JsonKey(name: 'lead_manager') String leadManager,
    String registrar,
    @JsonKey(name: 'debenture_trustee') String debentureTrustee,
  });
}

/// @nodoc
class __$$IssuerDetailsImplCopyWithImpl<$Res>
    extends _$IssuerDetailsCopyWithImpl<$Res, _$IssuerDetailsImpl>
    implements _$$IssuerDetailsImplCopyWith<$Res> {
  __$$IssuerDetailsImplCopyWithImpl(
    _$IssuerDetailsImpl _value,
    $Res Function(_$IssuerDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(
      _$IssuerDetailsImpl(
        issuerName:
            null == issuerName
                ? _value.issuerName
                : issuerName // ignore: cast_nullable_to_non_nullable
                    as String,
        typeOfIssuer:
            null == typeOfIssuer
                ? _value.typeOfIssuer
                : typeOfIssuer // ignore: cast_nullable_to_non_nullable
                    as String,
        sector:
            null == sector
                ? _value.sector
                : sector // ignore: cast_nullable_to_non_nullable
                    as String,
        industry:
            null == industry
                ? _value.industry
                : industry // ignore: cast_nullable_to_non_nullable
                    as String,
        issuerNature:
            null == issuerNature
                ? _value.issuerNature
                : issuerNature // ignore: cast_nullable_to_non_nullable
                    as String,
        cin:
            null == cin
                ? _value.cin
                : cin // ignore: cast_nullable_to_non_nullable
                    as String,
        leadManager:
            null == leadManager
                ? _value.leadManager
                : leadManager // ignore: cast_nullable_to_non_nullable
                    as String,
        registrar:
            null == registrar
                ? _value.registrar
                : registrar // ignore: cast_nullable_to_non_nullable
                    as String,
        debentureTrustee:
            null == debentureTrustee
                ? _value.debentureTrustee
                : debentureTrustee // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IssuerDetailsImpl implements _IssuerDetails {
  const _$IssuerDetailsImpl({
    @JsonKey(name: 'issuer_name') required this.issuerName,
    @JsonKey(name: 'type_of_issuer') required this.typeOfIssuer,
    required this.sector,
    required this.industry,
    @JsonKey(name: 'issuer_nature') required this.issuerNature,
    required this.cin,
    @JsonKey(name: 'lead_manager') required this.leadManager,
    required this.registrar,
    @JsonKey(name: 'debenture_trustee') required this.debentureTrustee,
  });

  factory _$IssuerDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssuerDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'issuer_name')
  final String issuerName;
  @override
  @JsonKey(name: 'type_of_issuer')
  final String typeOfIssuer;
  @override
  final String sector;
  @override
  final String industry;
  @override
  @JsonKey(name: 'issuer_nature')
  final String issuerNature;
  @override
  final String cin;
  @override
  @JsonKey(name: 'lead_manager')
  final String leadManager;
  @override
  final String registrar;
  @override
  @JsonKey(name: 'debenture_trustee')
  final String debentureTrustee;

  @override
  String toString() {
    return 'IssuerDetails(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuerDetailsImpl &&
            (identical(other.issuerName, issuerName) ||
                other.issuerName == issuerName) &&
            (identical(other.typeOfIssuer, typeOfIssuer) ||
                other.typeOfIssuer == typeOfIssuer) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.issuerNature, issuerNature) ||
                other.issuerNature == issuerNature) &&
            (identical(other.cin, cin) || other.cin == cin) &&
            (identical(other.leadManager, leadManager) ||
                other.leadManager == leadManager) &&
            (identical(other.registrar, registrar) ||
                other.registrar == registrar) &&
            (identical(other.debentureTrustee, debentureTrustee) ||
                other.debentureTrustee == debentureTrustee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    issuerName,
    typeOfIssuer,
    sector,
    industry,
    issuerNature,
    cin,
    leadManager,
    registrar,
    debentureTrustee,
  );

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuerDetailsImplCopyWith<_$IssuerDetailsImpl> get copyWith =>
      __$$IssuerDetailsImplCopyWithImpl<_$IssuerDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssuerDetailsImplToJson(this);
  }
}

abstract class _IssuerDetails implements IssuerDetails {
  const factory _IssuerDetails({
    @JsonKey(name: 'issuer_name') required final String issuerName,
    @JsonKey(name: 'type_of_issuer') required final String typeOfIssuer,
    required final String sector,
    required final String industry,
    @JsonKey(name: 'issuer_nature') required final String issuerNature,
    required final String cin,
    @JsonKey(name: 'lead_manager') required final String leadManager,
    required final String registrar,
    @JsonKey(name: 'debenture_trustee') required final String debentureTrustee,
  }) = _$IssuerDetailsImpl;

  factory _IssuerDetails.fromJson(Map<String, dynamic> json) =
      _$IssuerDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'issuer_name')
  String get issuerName;
  @override
  @JsonKey(name: 'type_of_issuer')
  String get typeOfIssuer;
  @override
  String get sector;
  @override
  String get industry;
  @override
  @JsonKey(name: 'issuer_nature')
  String get issuerNature;
  @override
  String get cin;
  @override
  @JsonKey(name: 'lead_manager')
  String get leadManager;
  @override
  String get registrar;
  @override
  @JsonKey(name: 'debenture_trustee')
  String get debentureTrustee;

  /// Create a copy of IssuerDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssuerDetailsImplCopyWith<_$IssuerDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
