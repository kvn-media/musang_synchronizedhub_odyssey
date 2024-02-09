// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  @JsonValue('user_login')
  userLogin(r'user_login'),
  @JsonValue('user_pass')
  userPass(r'user_pass'),
  @JsonValue('user_nicename')
  userNicename(r'user_nicename'),
  @JsonValue('user_email')
  userEmail(r'user_email'),
  @JsonValue('user_url')
  userUrl(r'user_url'),
  @JsonValue('user_registered')
  userRegistered(r'user_registered'),
  @JsonValue('user_activation_key')
  userActivationKey(r'user_activation_key'),
  @JsonValue('user_status')
  userStatus(r'user_status'),
  @JsonValue('display_name')
  displayName(r'display_name');

  const UserScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum ATGScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('atg_timestamp')
  atgTimestamp(r'atg_timestamp'),
  @JsonValue('level_barrel')
  levelBarrel(r'level_barrel'),
  @JsonValue('volume_change_barrel')
  volumeChangeBarrel(r'volume_change_barrel'),
  @JsonValue('avg_temp_celcius')
  avgTempCelcius(r'avg_temp_celcius'),
  @JsonValue('water_level_meter')
  waterLevelMeter(r'water_level_meter'),
  @JsonValue('product_temp_celcius')
  productTempCelcius(r'product_temp_celcius'),
  alarm,
  @JsonValue('site_id')
  siteId(r'site_id');

  const ATGScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum AtgSummaryScalarFieldEnum implements _i1.PrismaEnum {
  id,
  @JsonValue('from_date')
  fromDate(r'from_date'),
  @JsonValue('to_date')
  toDate(r'to_date'),
  @JsonValue('from_tank_position')
  fromTankPosition(r'from_tank_position'),
  @JsonValue('last_tank_position')
  lastTankPosition(r'last_tank_position'),
  change;

  const AtgSummaryScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final BigIntFilter? id;

  @JsonKey(name: r'user_login')
  final StringNullableFilter? userLogin;

  @JsonKey(name: r'user_pass')
  final StringNullableFilter? userPass;

  @JsonKey(name: r'user_nicename')
  final StringNullableFilter? userNicename;

  @JsonKey(name: r'user_email')
  final StringNullableFilter? userEmail;

  @JsonKey(name: r'user_url')
  final StringNullableFilter? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTimeNullableFilter? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final StringNullableFilter? userActivationKey;

  @JsonKey(name: r'user_status')
  final IntNullableFilter? userStatus;

  @JsonKey(name: r'display_name')
  final StringNullableFilter? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_login')
  final SortOrder? userLogin;

  @JsonKey(name: r'user_pass')
  final SortOrder? userPass;

  @JsonKey(name: r'user_nicename')
  final SortOrder? userNicename;

  @JsonKey(name: r'user_email')
  final SortOrder? userEmail;

  @JsonKey(name: r'user_url')
  final SortOrder? userUrl;

  @JsonKey(name: r'user_registered')
  final SortOrder? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final SortOrder? userActivationKey;

  @JsonKey(name: r'user_status')
  final SortOrder? userStatus;

  @JsonKey(name: r'display_name')
  final SortOrder? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({
    this.id,
    this.userEmail,
    this.AND,
    this.OR,
    this.NOT,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'user_email')
  final String? userEmail;

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  @JsonKey(name: r'user_login')
  final StringNullableFilter? userLogin;

  @JsonKey(name: r'user_pass')
  final StringNullableFilter? userPass;

  @JsonKey(name: r'user_nicename')
  final StringNullableFilter? userNicename;

  @JsonKey(name: r'user_url')
  final StringNullableFilter? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTimeNullableFilter? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final StringNullableFilter? userActivationKey;

  @JsonKey(name: r'user_status')
  final IntNullableFilter? userStatus;

  @JsonKey(name: r'display_name')
  final StringNullableFilter? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_login')
  final SortOrder? userLogin;

  @JsonKey(name: r'user_pass')
  final SortOrder? userPass;

  @JsonKey(name: r'user_nicename')
  final SortOrder? userNicename;

  @JsonKey(name: r'user_email')
  final SortOrder? userEmail;

  @JsonKey(name: r'user_url')
  final SortOrder? userUrl;

  @JsonKey(name: r'user_registered')
  final SortOrder? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final SortOrder? userActivationKey;

  @JsonKey(name: r'user_status')
  final SortOrder? userStatus;

  @JsonKey(name: r'display_name')
  final SortOrder? displayName;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final UserAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final BigIntWithAggregatesFilter? id;

  @JsonKey(name: r'user_login')
  final StringNullableWithAggregatesFilter? userLogin;

  @JsonKey(name: r'user_pass')
  final StringNullableWithAggregatesFilter? userPass;

  @JsonKey(name: r'user_nicename')
  final StringNullableWithAggregatesFilter? userNicename;

  @JsonKey(name: r'user_email')
  final StringNullableWithAggregatesFilter? userEmail;

  @JsonKey(name: r'user_url')
  final StringNullableWithAggregatesFilter? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTimeNullableWithAggregatesFilter? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final StringNullableWithAggregatesFilter? userActivationKey;

  @JsonKey(name: r'user_status')
  final IntNullableWithAggregatesFilter? userStatus;

  @JsonKey(name: r'display_name')
  final StringNullableWithAggregatesFilter? displayName;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ATGWhereInput implements _i1.JsonSerializable {
  const ATGWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ATGWhereInputFromJson(json);

  final Iterable<ATGWhereInput>? AND;

  final Iterable<ATGWhereInput>? OR;

  final Iterable<ATGWhereInput>? NOT;

  @JsonKey(name: r'atg_timestamp')
  final DateTimeFilter? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final FloatNullableFilter? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final FloatNullableFilter? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final FloatNullableFilter? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final FloatNullableFilter? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final FloatNullableFilter? productTempCelcius;

  final StringNullableFilter? alarm;

  @JsonKey(name: r'site_id')
  final BigIntNullableFilter? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGWhereInputToJson(this);
}

@_i1.jsonSerializable
class ATGOrderByWithRelationInput implements _i1.JsonSerializable {
  const ATGOrderByWithRelationInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$ATGOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final SortOrder? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final SortOrder? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final SortOrder? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final SortOrder? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final SortOrder? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final SortOrder? productTempCelcius;

  final SortOrder? alarm;

  @JsonKey(name: r'site_id')
  final SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ATGWhereUniqueInput implements _i1.JsonSerializable {
  const ATGWhereUniqueInput({
    this.atgTimestamp,
    this.AND,
    this.OR,
    this.NOT,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ATGWhereUniqueInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTime? atgTimestamp;

  final Iterable<ATGWhereInput>? AND;

  final Iterable<ATGWhereInput>? OR;

  final Iterable<ATGWhereInput>? NOT;

  @JsonKey(name: r'level_barrel')
  final FloatNullableFilter? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final FloatNullableFilter? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final FloatNullableFilter? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final FloatNullableFilter? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final FloatNullableFilter? productTempCelcius;

  final StringNullableFilter? alarm;

  @JsonKey(name: r'site_id')
  final BigIntNullableFilter? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ATGOrderByWithAggregationInput implements _i1.JsonSerializable {
  const ATGOrderByWithAggregationInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ATGOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$ATGOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final SortOrder? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final SortOrder? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final SortOrder? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final SortOrder? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final SortOrder? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final SortOrder? productTempCelcius;

  final SortOrder? alarm;

  @JsonKey(name: r'site_id')
  final SortOrder? siteId;

  @JsonKey(name: r'_count')
  final ATGCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ATGAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ATGMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ATGMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ATGSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => _$ATGOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ATGScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const ATGScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ATGScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ATGScalarWhereWithAggregatesInput>? AND;

  final Iterable<ATGScalarWhereWithAggregatesInput>? OR;

  final Iterable<ATGScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'atg_timestamp')
  final DateTimeWithAggregatesFilter? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final FloatNullableWithAggregatesFilter? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final FloatNullableWithAggregatesFilter? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final FloatNullableWithAggregatesFilter? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final FloatNullableWithAggregatesFilter? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final FloatNullableWithAggregatesFilter? productTempCelcius;

  final StringNullableWithAggregatesFilter? alarm;

  @JsonKey(name: r'site_id')
  final BigIntNullableWithAggregatesFilter? siteId;

  @override
  Map<String, dynamic> toJson() =>
      _$ATGScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryWhereInput implements _i1.JsonSerializable {
  const AtgSummaryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryWhereInputFromJson(json);

  final Iterable<AtgSummaryWhereInput>? AND;

  final Iterable<AtgSummaryWhereInput>? OR;

  final Iterable<AtgSummaryWhereInput>? NOT;

  final IntFilter? id;

  @JsonKey(name: r'from_date')
  final DateTimeNullableFilter? fromDate;

  @JsonKey(name: r'to_date')
  final DateTimeNullableFilter? toDate;

  @JsonKey(name: r'from_tank_position')
  final FloatNullableFilter? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final FloatNullableFilter? lastTankPosition;

  final FloatNullableFilter? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryWhereInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryOrderByWithRelationInput implements _i1.JsonSerializable {
  const AtgSummaryOrderByWithRelationInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'from_date')
  final SortOrder? fromDate;

  @JsonKey(name: r'to_date')
  final SortOrder? toDate;

  @JsonKey(name: r'from_tank_position')
  final SortOrder? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final SortOrder? lastTankPosition;

  final SortOrder? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryWhereUniqueInput implements _i1.JsonSerializable {
  const AtgSummaryWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryWhereUniqueInputFromJson(json);

  final int? id;

  final Iterable<AtgSummaryWhereInput>? AND;

  final Iterable<AtgSummaryWhereInput>? OR;

  final Iterable<AtgSummaryWhereInput>? NOT;

  @JsonKey(name: r'from_date')
  final DateTimeNullableFilter? fromDate;

  @JsonKey(name: r'to_date')
  final DateTimeNullableFilter? toDate;

  @JsonKey(name: r'from_tank_position')
  final FloatNullableFilter? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final FloatNullableFilter? lastTankPosition;

  final FloatNullableFilter? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryOrderByWithAggregationInput implements _i1.JsonSerializable {
  const AtgSummaryOrderByWithAggregationInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory AtgSummaryOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'from_date')
  final SortOrder? fromDate;

  @JsonKey(name: r'to_date')
  final SortOrder? toDate;

  @JsonKey(name: r'from_tank_position')
  final SortOrder? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final SortOrder? lastTankPosition;

  final SortOrder? change;

  @JsonKey(name: r'_count')
  final AtgSummaryCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final AtgSummaryAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final AtgSummaryMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final AtgSummaryMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final AtgSummarySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const AtgSummaryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<AtgSummaryScalarWhereWithAggregatesInput>? AND;

  final Iterable<AtgSummaryScalarWhereWithAggregatesInput>? OR;

  final Iterable<AtgSummaryScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  @JsonKey(name: r'from_date')
  final DateTimeNullableWithAggregatesFilter? fromDate;

  @JsonKey(name: r'to_date')
  final DateTimeNullableWithAggregatesFilter? toDate;

  @JsonKey(name: r'from_tank_position')
  final FloatNullableWithAggregatesFilter? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final FloatNullableWithAggregatesFilter? lastTankPosition;

  final FloatNullableWithAggregatesFilter? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'user_login')
  final String? userLogin;

  @JsonKey(name: r'user_pass')
  final String? userPass;

  @JsonKey(name: r'user_nicename')
  final String? userNicename;

  @JsonKey(name: r'user_email')
  final String? userEmail;

  @JsonKey(name: r'user_url')
  final String? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTime? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final String? userActivationKey;

  @JsonKey(name: r'user_status')
  final int? userStatus;

  @JsonKey(name: r'display_name')
  final String? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'user_login')
  final String? userLogin;

  @JsonKey(name: r'user_pass')
  final String? userPass;

  @JsonKey(name: r'user_nicename')
  final String? userNicename;

  @JsonKey(name: r'user_email')
  final String? userEmail;

  @JsonKey(name: r'user_url')
  final String? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTime? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final String? userActivationKey;

  @JsonKey(name: r'user_status')
  final int? userStatus;

  @JsonKey(name: r'display_name')
  final String? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'user_login')
  final NullableStringFieldUpdateOperationsInput? userLogin;

  @JsonKey(name: r'user_pass')
  final NullableStringFieldUpdateOperationsInput? userPass;

  @JsonKey(name: r'user_nicename')
  final NullableStringFieldUpdateOperationsInput? userNicename;

  @JsonKey(name: r'user_email')
  final NullableStringFieldUpdateOperationsInput? userEmail;

  @JsonKey(name: r'user_url')
  final NullableStringFieldUpdateOperationsInput? userUrl;

  @JsonKey(name: r'user_registered')
  final NullableDateTimeFieldUpdateOperationsInput? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final NullableStringFieldUpdateOperationsInput? userActivationKey;

  @JsonKey(name: r'user_status')
  final NullableIntFieldUpdateOperationsInput? userStatus;

  @JsonKey(name: r'display_name')
  final NullableStringFieldUpdateOperationsInput? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'user_login')
  final NullableStringFieldUpdateOperationsInput? userLogin;

  @JsonKey(name: r'user_pass')
  final NullableStringFieldUpdateOperationsInput? userPass;

  @JsonKey(name: r'user_nicename')
  final NullableStringFieldUpdateOperationsInput? userNicename;

  @JsonKey(name: r'user_email')
  final NullableStringFieldUpdateOperationsInput? userEmail;

  @JsonKey(name: r'user_url')
  final NullableStringFieldUpdateOperationsInput? userUrl;

  @JsonKey(name: r'user_registered')
  final NullableDateTimeFieldUpdateOperationsInput? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final NullableStringFieldUpdateOperationsInput? userActivationKey;

  @JsonKey(name: r'user_status')
  final NullableIntFieldUpdateOperationsInput? userStatus;

  @JsonKey(name: r'display_name')
  final NullableStringFieldUpdateOperationsInput? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'user_login')
  final String? userLogin;

  @JsonKey(name: r'user_pass')
  final String? userPass;

  @JsonKey(name: r'user_nicename')
  final String? userNicename;

  @JsonKey(name: r'user_email')
  final String? userEmail;

  @JsonKey(name: r'user_url')
  final String? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTime? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final String? userActivationKey;

  @JsonKey(name: r'user_status')
  final int? userStatus;

  @JsonKey(name: r'display_name')
  final String? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'user_login')
  final NullableStringFieldUpdateOperationsInput? userLogin;

  @JsonKey(name: r'user_pass')
  final NullableStringFieldUpdateOperationsInput? userPass;

  @JsonKey(name: r'user_nicename')
  final NullableStringFieldUpdateOperationsInput? userNicename;

  @JsonKey(name: r'user_email')
  final NullableStringFieldUpdateOperationsInput? userEmail;

  @JsonKey(name: r'user_url')
  final NullableStringFieldUpdateOperationsInput? userUrl;

  @JsonKey(name: r'user_registered')
  final NullableDateTimeFieldUpdateOperationsInput? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final NullableStringFieldUpdateOperationsInput? userActivationKey;

  @JsonKey(name: r'user_status')
  final NullableIntFieldUpdateOperationsInput? userStatus;

  @JsonKey(name: r'display_name')
  final NullableStringFieldUpdateOperationsInput? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final BigIntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'user_login')
  final NullableStringFieldUpdateOperationsInput? userLogin;

  @JsonKey(name: r'user_pass')
  final NullableStringFieldUpdateOperationsInput? userPass;

  @JsonKey(name: r'user_nicename')
  final NullableStringFieldUpdateOperationsInput? userNicename;

  @JsonKey(name: r'user_email')
  final NullableStringFieldUpdateOperationsInput? userEmail;

  @JsonKey(name: r'user_url')
  final NullableStringFieldUpdateOperationsInput? userUrl;

  @JsonKey(name: r'user_registered')
  final NullableDateTimeFieldUpdateOperationsInput? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final NullableStringFieldUpdateOperationsInput? userActivationKey;

  @JsonKey(name: r'user_status')
  final NullableIntFieldUpdateOperationsInput? userStatus;

  @JsonKey(name: r'display_name')
  final NullableStringFieldUpdateOperationsInput? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class ATGCreateInput implements _i1.JsonSerializable {
  const ATGCreateInput({
    required this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGCreateInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTime atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final double? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final double? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final double? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final double? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final double? productTempCelcius;

  final String? alarm;

  @JsonKey(name: r'site_id')
  final BigInt? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGCreateInputToJson(this);
}

@_i1.jsonSerializable
class ATGUncheckedCreateInput implements _i1.JsonSerializable {
  const ATGUncheckedCreateInput({
    required this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTime atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final double? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final double? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final double? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final double? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final double? productTempCelcius;

  final String? alarm;

  @JsonKey(name: r'site_id')
  final BigInt? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ATGUpdateInput implements _i1.JsonSerializable {
  const ATGUpdateInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGUpdateInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTimeFieldUpdateOperationsInput? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final NullableFloatFieldUpdateOperationsInput? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final NullableFloatFieldUpdateOperationsInput? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final NullableFloatFieldUpdateOperationsInput? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? productTempCelcius;

  final NullableStringFieldUpdateOperationsInput? alarm;

  @JsonKey(name: r'site_id')
  final NullableBigIntFieldUpdateOperationsInput? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ATGUncheckedUpdateInput implements _i1.JsonSerializable {
  const ATGUncheckedUpdateInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTimeFieldUpdateOperationsInput? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final NullableFloatFieldUpdateOperationsInput? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final NullableFloatFieldUpdateOperationsInput? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final NullableFloatFieldUpdateOperationsInput? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? productTempCelcius;

  final NullableStringFieldUpdateOperationsInput? alarm;

  @JsonKey(name: r'site_id')
  final NullableBigIntFieldUpdateOperationsInput? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ATGCreateManyInput implements _i1.JsonSerializable {
  const ATGCreateManyInput({
    required this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ATGCreateManyInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTime atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final double? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final double? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final double? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final double? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final double? productTempCelcius;

  final String? alarm;

  @JsonKey(name: r'site_id')
  final BigInt? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ATGUpdateManyMutationInput implements _i1.JsonSerializable {
  const ATGUpdateManyMutationInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$ATGUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTimeFieldUpdateOperationsInput? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final NullableFloatFieldUpdateOperationsInput? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final NullableFloatFieldUpdateOperationsInput? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final NullableFloatFieldUpdateOperationsInput? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? productTempCelcius;

  final NullableStringFieldUpdateOperationsInput? alarm;

  @JsonKey(name: r'site_id')
  final NullableBigIntFieldUpdateOperationsInput? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ATGUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ATGUncheckedUpdateManyInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ATGUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTimeFieldUpdateOperationsInput? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final NullableFloatFieldUpdateOperationsInput? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final NullableFloatFieldUpdateOperationsInput? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final NullableFloatFieldUpdateOperationsInput? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final NullableFloatFieldUpdateOperationsInput? productTempCelcius;

  final NullableStringFieldUpdateOperationsInput? alarm;

  @JsonKey(name: r'site_id')
  final NullableBigIntFieldUpdateOperationsInput? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryCreateInput implements _i1.JsonSerializable {
  const AtgSummaryCreateInput({
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryCreateInputFromJson(json);

  @JsonKey(name: r'from_date')
  final DateTime? fromDate;

  @JsonKey(name: r'to_date')
  final DateTime? toDate;

  @JsonKey(name: r'from_tank_position')
  final double? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final double? lastTankPosition;

  final double? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryCreateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryUncheckedCreateInput implements _i1.JsonSerializable {
  const AtgSummaryUncheckedCreateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryUncheckedCreateInputFromJson(json);

  final int? id;

  @JsonKey(name: r'from_date')
  final DateTime? fromDate;

  @JsonKey(name: r'to_date')
  final DateTime? toDate;

  @JsonKey(name: r'from_tank_position')
  final double? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final double? lastTankPosition;

  final double? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryUpdateInput implements _i1.JsonSerializable {
  const AtgSummaryUpdateInput({
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryUpdateInputFromJson(json);

  @JsonKey(name: r'from_date')
  final NullableDateTimeFieldUpdateOperationsInput? fromDate;

  @JsonKey(name: r'to_date')
  final NullableDateTimeFieldUpdateOperationsInput? toDate;

  @JsonKey(name: r'from_tank_position')
  final NullableFloatFieldUpdateOperationsInput? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final NullableFloatFieldUpdateOperationsInput? lastTankPosition;

  final NullableFloatFieldUpdateOperationsInput? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryUncheckedUpdateInput implements _i1.JsonSerializable {
  const AtgSummaryUncheckedUpdateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'from_date')
  final NullableDateTimeFieldUpdateOperationsInput? fromDate;

  @JsonKey(name: r'to_date')
  final NullableDateTimeFieldUpdateOperationsInput? toDate;

  @JsonKey(name: r'from_tank_position')
  final NullableFloatFieldUpdateOperationsInput? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final NullableFloatFieldUpdateOperationsInput? lastTankPosition;

  final NullableFloatFieldUpdateOperationsInput? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryCreateManyInput implements _i1.JsonSerializable {
  const AtgSummaryCreateManyInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryCreateManyInputFromJson(json);

  final int? id;

  @JsonKey(name: r'from_date')
  final DateTime? fromDate;

  @JsonKey(name: r'to_date')
  final DateTime? toDate;

  @JsonKey(name: r'from_tank_position')
  final double? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final double? lastTankPosition;

  final double? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryUpdateManyMutationInput implements _i1.JsonSerializable {
  const AtgSummaryUpdateManyMutationInput({
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'from_date')
  final NullableDateTimeFieldUpdateOperationsInput? fromDate;

  @JsonKey(name: r'to_date')
  final NullableDateTimeFieldUpdateOperationsInput? toDate;

  @JsonKey(name: r'from_tank_position')
  final NullableFloatFieldUpdateOperationsInput? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final NullableFloatFieldUpdateOperationsInput? lastTankPosition;

  final NullableFloatFieldUpdateOperationsInput? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const AtgSummaryUncheckedUpdateManyInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'from_date')
  final NullableDateTimeFieldUpdateOperationsInput? fromDate;

  @JsonKey(name: r'to_date')
  final NullableDateTimeFieldUpdateOperationsInput? toDate;

  @JsonKey(name: r'from_tank_position')
  final NullableFloatFieldUpdateOperationsInput? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final NullableFloatFieldUpdateOperationsInput? lastTankPosition;

  final NullableFloatFieldUpdateOperationsInput? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class BigIntFilter implements _i1.JsonSerializable {
  const BigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory BigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BigIntFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableFilter implements _i1.JsonSerializable {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeNullableFilter implements _i1.JsonSerializable {
  const DateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeNullableFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableFilter implements _i1.JsonSerializable {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_login')
  final SortOrder? userLogin;

  @JsonKey(name: r'user_pass')
  final SortOrder? userPass;

  @JsonKey(name: r'user_nicename')
  final SortOrder? userNicename;

  @JsonKey(name: r'user_email')
  final SortOrder? userEmail;

  @JsonKey(name: r'user_url')
  final SortOrder? userUrl;

  @JsonKey(name: r'user_registered')
  final SortOrder? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final SortOrder? userActivationKey;

  @JsonKey(name: r'user_status')
  final SortOrder? userStatus;

  @JsonKey(name: r'display_name')
  final SortOrder? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const UserAvgOrderByAggregateInput({
    this.id,
    this.userStatus,
  });

  factory UserAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_status')
  final SortOrder? userStatus;

  @override
  Map<String, dynamic> toJson() => _$UserAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_login')
  final SortOrder? userLogin;

  @JsonKey(name: r'user_pass')
  final SortOrder? userPass;

  @JsonKey(name: r'user_nicename')
  final SortOrder? userNicename;

  @JsonKey(name: r'user_email')
  final SortOrder? userEmail;

  @JsonKey(name: r'user_url')
  final SortOrder? userUrl;

  @JsonKey(name: r'user_registered')
  final SortOrder? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final SortOrder? userActivationKey;

  @JsonKey(name: r'user_status')
  final SortOrder? userStatus;

  @JsonKey(name: r'display_name')
  final SortOrder? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_login')
  final SortOrder? userLogin;

  @JsonKey(name: r'user_pass')
  final SortOrder? userPass;

  @JsonKey(name: r'user_nicename')
  final SortOrder? userNicename;

  @JsonKey(name: r'user_email')
  final SortOrder? userEmail;

  @JsonKey(name: r'user_url')
  final SortOrder? userUrl;

  @JsonKey(name: r'user_registered')
  final SortOrder? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final SortOrder? userActivationKey;

  @JsonKey(name: r'user_status')
  final SortOrder? userStatus;

  @JsonKey(name: r'display_name')
  final SortOrder? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserSumOrderByAggregateInput implements _i1.JsonSerializable {
  const UserSumOrderByAggregateInput({
    this.id,
    this.userStatus,
  });

  factory UserSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'user_status')
  final SortOrder? userStatus;

  @override
  Map<String, dynamic> toJson() => _$UserSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const BigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory BigIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$BigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeNullableWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntNullableWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$IntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class FloatNullableFilter implements _i1.JsonSerializable {
  const FloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory FloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$FloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class BigIntNullableFilter implements _i1.JsonSerializable {
  const BigIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory BigIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntNullableFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BigIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class ATGCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ATGCountOrderByAggregateInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final SortOrder? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final SortOrder? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final SortOrder? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final SortOrder? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final SortOrder? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final SortOrder? productTempCelcius;

  final SortOrder? alarm;

  @JsonKey(name: r'site_id')
  final SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ATGAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ATGAvgOrderByAggregateInput({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  factory ATGAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'level_barrel')
  final SortOrder? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final SortOrder? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final SortOrder? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final SortOrder? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final SortOrder? productTempCelcius;

  @JsonKey(name: r'site_id')
  final SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ATGMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ATGMaxOrderByAggregateInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final SortOrder? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final SortOrder? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final SortOrder? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final SortOrder? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final SortOrder? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final SortOrder? productTempCelcius;

  final SortOrder? alarm;

  @JsonKey(name: r'site_id')
  final SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ATGMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ATGMinOrderByAggregateInput({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final SortOrder? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final SortOrder? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final SortOrder? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final SortOrder? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final SortOrder? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final SortOrder? productTempCelcius;

  final SortOrder? alarm;

  @JsonKey(name: r'site_id')
  final SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ATGSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ATGSumOrderByAggregateInput({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  factory ATGSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ATGSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'level_barrel')
  final SortOrder? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final SortOrder? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final SortOrder? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final SortOrder? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final SortOrder? productTempCelcius;

  @JsonKey(name: r'site_id')
  final SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class FloatNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const FloatNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FloatNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$FloatNullableWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$FloatNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BigIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const BigIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory BigIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$BigIntNullableWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$BigIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryCountOrderByAggregateInput implements _i1.JsonSerializable {
  const AtgSummaryCountOrderByAggregateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'from_date')
  final SortOrder? fromDate;

  @JsonKey(name: r'to_date')
  final SortOrder? toDate;

  @JsonKey(name: r'from_tank_position')
  final SortOrder? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final SortOrder? lastTankPosition;

  final SortOrder? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const AtgSummaryAvgOrderByAggregateInput({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'from_tank_position')
  final SortOrder? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final SortOrder? lastTankPosition;

  final SortOrder? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const AtgSummaryMaxOrderByAggregateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'from_date')
  final SortOrder? fromDate;

  @JsonKey(name: r'to_date')
  final SortOrder? toDate;

  @JsonKey(name: r'from_tank_position')
  final SortOrder? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final SortOrder? lastTankPosition;

  final SortOrder? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryMinOrderByAggregateInput implements _i1.JsonSerializable {
  const AtgSummaryMinOrderByAggregateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummaryMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'from_date')
  final SortOrder? fromDate;

  @JsonKey(name: r'to_date')
  final SortOrder? toDate;

  @JsonKey(name: r'from_tank_position')
  final SortOrder? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final SortOrder? lastTankPosition;

  final SortOrder? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummaryMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AtgSummarySumOrderByAggregateInput implements _i1.JsonSerializable {
  const AtgSummarySumOrderByAggregateInput({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummarySumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AtgSummarySumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'from_tank_position')
  final SortOrder? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final SortOrder? lastTankPosition;

  final SortOrder? change;

  @override
  Map<String, dynamic> toJson() =>
      _$AtgSummarySumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BigIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const BigIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory BigIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$BigIntFieldUpdateOperationsInputFromJson(json);

  final BigInt? set;

  final BigInt? increment;

  final BigInt? decrement;

  final BigInt? multiply;

  final BigInt? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$BigIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonSerializable {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  factory NullableDateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableDateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableDateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableIntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableFloatFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableFloatFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableFloatFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableFloatFieldUpdateOperationsInputFromJson(json);

  final double? set;

  final double? increment;

  final double? decrement;

  final double? multiply;

  final double? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableFloatFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableBigIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableBigIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableBigIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableBigIntFieldUpdateOperationsInputFromJson(json);

  final BigInt? set;

  final BigInt? increment;

  final BigInt? decrement;

  final BigInt? multiply;

  final BigInt? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableBigIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntFilter implements _i1.JsonSerializable {
  const NestedBigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedBigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBigIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableFilter implements _i1.JsonSerializable {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeNullableFilter implements _i1.JsonSerializable {
  const NestedDateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeNullableFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedBigIntWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedBigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedBigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonSerializable {
  const NestedDateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeNullableWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedIntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableFilter implements _i1.JsonSerializable {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntNullableFilter implements _i1.JsonSerializable {
  const NestedBigIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedBigIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBigIntNullableFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBigIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedFloatNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedFloatNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedFloatNullableWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedFloatNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBigIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedBigIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedBigIntNullableWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedBigIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final BigInt id;

  @JsonKey(name: r'user_login')
  final String? userLogin;

  @JsonKey(name: r'user_pass')
  final String? userPass;

  @JsonKey(name: r'user_nicename')
  final String? userNicename;

  @JsonKey(name: r'user_email')
  final String? userEmail;

  @JsonKey(name: r'user_url')
  final String? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTime? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final String? userActivationKey;

  @JsonKey(name: r'user_status')
  final int? userStatus;

  @JsonKey(name: r'display_name')
  final String? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@_i1.jsonSerializable
class Atg implements _i1.JsonSerializable {
  const Atg({
    required this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory Atg.fromJson(Map<String, dynamic> json) => _$AtgFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTime atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final double? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final double? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final double? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final double? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final double? productTempCelcius;

  final String? alarm;

  @JsonKey(name: r'site_id')
  final BigInt? siteId;

  @override
  Map<String, dynamic> toJson() => _$AtgToJson(this);
}

@_i1.jsonSerializable
class AtgSummary implements _i1.JsonSerializable {
  const AtgSummary({
    required this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummary.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryFromJson(json);

  final int id;

  @JsonKey(name: r'from_date')
  final DateTime? fromDate;

  @JsonKey(name: r'to_date')
  final DateTime? toDate;

  @JsonKey(name: r'from_tank_position')
  final double? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final double? lastTankPosition;

  final double? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryToJson(this);
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );
}

class ATGFluent<T> extends _i1.PrismaFluent<T> {
  const ATGFluent(
    super.original,
    super.$query,
  );
}

class AtgSummaryFluent<T> extends _i1.PrismaFluent<T> {
  const AtgSummaryFluent(
    super.original,
    super.$query,
  );
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({UserCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension ATGModelDelegateExtension on _i1.ModelDelegate<Atg> {
  ATGFluent<Atg?> findUnique({required ATGWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueATG',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Atg.fromJson(json.cast<String, dynamic>()) : null);
    return ATGFluent<Atg?>(
      future,
      query,
    );
  }

  ATGFluent<Atg> findUniqueOrThrow({required ATGWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueATGOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueATGOrThrow',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Atg.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ATG)'));
    return ATGFluent<Atg>(
      future,
      query,
    );
  }

  ATGFluent<Atg?> findFirst({
    ATGWhereInput? where,
    Iterable<ATGOrderByWithRelationInput>? orderBy,
    ATGWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ATGScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstATG',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Atg.fromJson(json.cast<String, dynamic>()) : null);
    return ATGFluent<Atg?>(
      future,
      query,
    );
  }

  ATGFluent<Atg> findFirstOrThrow({
    ATGWhereInput? where,
    Iterable<ATGOrderByWithRelationInput>? orderBy,
    ATGWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ATGScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstATGOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstATGOrThrow',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Atg.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ATG)'));
    return ATGFluent<Atg>(
      future,
      query,
    );
  }

  Future<Iterable<Atg>> findMany({
    ATGWhereInput? where,
    Iterable<ATGOrderByWithRelationInput>? orderBy,
    ATGWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ATGScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyATG',
    );
    final fields = ATGScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyATG) =>
        findManyATG.map((Map findManyATG) => Atg.fromJson(findManyATG.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ATGFluent<Atg> create({required ATGCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneATG',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Atg.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ATG)'));
    return ATGFluent<Atg>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ATGCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyATG',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyATG) =>
        AffectedRowsOutput.fromJson(createManyATG.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ATGFluent<Atg?> update({
    required ATGUpdateInput data,
    required ATGWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneATG',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Atg.fromJson(json.cast<String, dynamic>()) : null);
    return ATGFluent<Atg?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ATGUpdateManyMutationInput data,
    ATGWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyATG',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyATG) =>
        AffectedRowsOutput.fromJson(updateManyATG.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ATGFluent<Atg> upsert({
    required ATGWhereUniqueInput where,
    required ATGCreateInput create,
    required ATGUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneATG',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Atg.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: ATG)'));
    return ATGFluent<Atg>(
      future,
      query,
    );
  }

  ATGFluent<Atg?> delete({required ATGWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneATG',
    );
    final future = query(ATGScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Atg.fromJson(json.cast<String, dynamic>()) : null);
    return ATGFluent<Atg?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ATGWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyATG',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyATG) =>
        AffectedRowsOutput.fromJson(deleteManyATG.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateATG aggregate({
    ATGWhereInput? where,
    Iterable<ATGOrderByWithRelationInput>? orderBy,
    ATGWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateATG',
    );
    return AggregateATG(query);
  }

  Future<Iterable<ATGGroupByOutputType>> groupBy({
    ATGWhereInput? where,
    Iterable<ATGOrderByWithAggregationInput>? orderBy,
    required Iterable<ATGScalarFieldEnum> by,
    ATGScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByATG',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByATG',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByATG) => groupByATG.map(
        (Map groupByATG) => ATGGroupByOutputType.fromJson(groupByATG.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension AtgSummaryModelDelegateExtension on _i1.ModelDelegate<AtgSummary> {
  AtgSummaryFluent<AtgSummary?> findUnique(
      {required AtgSummaryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueAtgSummary',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : null);
    return AtgSummaryFluent<AtgSummary?>(
      future,
      query,
    );
  }

  AtgSummaryFluent<AtgSummary> findUniqueOrThrow(
      {required AtgSummaryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueAtgSummaryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueAtgSummaryOrThrow',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: AtgSummary)'));
    return AtgSummaryFluent<AtgSummary>(
      future,
      query,
    );
  }

  AtgSummaryFluent<AtgSummary?> findFirst({
    AtgSummaryWhereInput? where,
    Iterable<AtgSummaryOrderByWithRelationInput>? orderBy,
    AtgSummaryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AtgSummaryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstAtgSummary',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : null);
    return AtgSummaryFluent<AtgSummary?>(
      future,
      query,
    );
  }

  AtgSummaryFluent<AtgSummary> findFirstOrThrow({
    AtgSummaryWhereInput? where,
    Iterable<AtgSummaryOrderByWithRelationInput>? orderBy,
    AtgSummaryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AtgSummaryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstAtgSummaryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstAtgSummaryOrThrow',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: AtgSummary)'));
    return AtgSummaryFluent<AtgSummary>(
      future,
      query,
    );
  }

  Future<Iterable<AtgSummary>> findMany({
    AtgSummaryWhereInput? where,
    Iterable<AtgSummaryOrderByWithRelationInput>? orderBy,
    AtgSummaryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AtgSummaryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyAtgSummary',
    );
    final fields = AtgSummaryScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyAtgSummary) =>
        findManyAtgSummary.map((Map findManyAtgSummary) =>
            AtgSummary.fromJson(findManyAtgSummary.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  AtgSummaryFluent<AtgSummary> create({AtgSummaryCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneAtgSummary',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: AtgSummary)'));
    return AtgSummaryFluent<AtgSummary>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<AtgSummaryCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyAtgSummary',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyAtgSummary) =>
        AffectedRowsOutput.fromJson(createManyAtgSummary.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AtgSummaryFluent<AtgSummary?> update({
    required AtgSummaryUpdateInput data,
    required AtgSummaryWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneAtgSummary',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : null);
    return AtgSummaryFluent<AtgSummary?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required AtgSummaryUpdateManyMutationInput data,
    AtgSummaryWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyAtgSummary',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyAtgSummary) =>
        AffectedRowsOutput.fromJson(updateManyAtgSummary.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AtgSummaryFluent<AtgSummary> upsert({
    required AtgSummaryWhereUniqueInput where,
    required AtgSummaryCreateInput create,
    required AtgSummaryUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneAtgSummary',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: AtgSummary)'));
    return AtgSummaryFluent<AtgSummary>(
      future,
      query,
    );
  }

  AtgSummaryFluent<AtgSummary?> delete(
      {required AtgSummaryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneAtgSummary',
    );
    final future = query(AtgSummaryScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? AtgSummary.fromJson(json.cast<String, dynamic>())
            : null);
    return AtgSummaryFluent<AtgSummary?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({AtgSummaryWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyAtgSummary',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyAtgSummary) =>
        AffectedRowsOutput.fromJson(deleteManyAtgSummary.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateAtgSummary aggregate({
    AtgSummaryWhereInput? where,
    Iterable<AtgSummaryOrderByWithRelationInput>? orderBy,
    AtgSummaryWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateAtgSummary',
    );
    return AggregateAtgSummary(query);
  }

  Future<Iterable<AtgSummaryGroupByOutputType>> groupBy({
    AtgSummaryWhereInput? where,
    Iterable<AtgSummaryOrderByWithAggregationInput>? orderBy,
    required Iterable<AtgSummaryScalarFieldEnum> by,
    AtgSummaryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByAtgSummary',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByAtgSummary',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByAtgSummary) =>
        groupByAtgSummary.map((Map groupByAtgSummary) =>
            AtgSummaryGroupByOutputType.fromJson(groupByAtgSummary.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.userLogin,
    this.userPass,
    this.userNicename,
    this.userEmail,
    this.userUrl,
    this.userRegistered,
    this.userActivationKey,
    this.userStatus,
    this.displayName,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final BigInt? id;

  @JsonKey(name: r'user_login')
  final String? userLogin;

  @JsonKey(name: r'user_pass')
  final String? userPass;

  @JsonKey(name: r'user_nicename')
  final String? userNicename;

  @JsonKey(name: r'user_email')
  final String? userEmail;

  @JsonKey(name: r'user_url')
  final String? userUrl;

  @JsonKey(name: r'user_registered')
  final DateTime? userRegistered;

  @JsonKey(name: r'user_activation_key')
  final String? userActivationKey;

  @JsonKey(name: r'user_status')
  final int? userStatus;

  @JsonKey(name: r'display_name')
  final String? displayName;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class ATGGroupByOutputType implements _i1.JsonSerializable {
  const ATGGroupByOutputType({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ATGGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'atg_timestamp')
  final DateTime? atgTimestamp;

  @JsonKey(name: r'level_barrel')
  final double? levelBarrel;

  @JsonKey(name: r'volume_change_barrel')
  final double? volumeChangeBarrel;

  @JsonKey(name: r'avg_temp_celcius')
  final double? avgTempCelcius;

  @JsonKey(name: r'water_level_meter')
  final double? waterLevelMeter;

  @JsonKey(name: r'product_temp_celcius')
  final double? productTempCelcius;

  final String? alarm;

  @JsonKey(name: r'site_id')
  final BigInt? siteId;

  @override
  Map<String, dynamic> toJson() => _$ATGGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AtgSummaryGroupByOutputType implements _i1.JsonSerializable {
  const AtgSummaryGroupByOutputType({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$AtgSummaryGroupByOutputTypeFromJson(json);

  final int? id;

  @JsonKey(name: r'from_date')
  final DateTime? fromDate;

  @JsonKey(name: r'to_date')
  final DateTime? toDate;

  @JsonKey(name: r'from_tank_position')
  final double? fromTankPosition;

  @JsonKey(name: r'last_tank_position')
  final double? lastTankPosition;

  final double? change;

  @override
  Map<String, dynamic> toJson() => _$AtgSummaryGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return UserAvgAggregateOutputType(query);
  }

  UserSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return UserSumAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class AggregateATG {
  const AggregateATG(this.$query);

  final _i1.PrismaFluentQuery $query;

  ATGCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ATGCountAggregateOutputType(query);
  }

  ATGAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ATGAvgAggregateOutputType(query);
  }

  ATGSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ATGSumAggregateOutputType(query);
  }

  ATGMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ATGMinAggregateOutputType(query);
  }

  ATGMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ATGMaxAggregateOutputType(query);
  }
}

class AggregateAtgSummary {
  const AggregateAtgSummary(this.$query);

  final _i1.PrismaFluentQuery $query;

  AtgSummaryCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AtgSummaryCountAggregateOutputType(query);
  }

  AtgSummaryAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return AtgSummaryAvgAggregateOutputType(query);
  }

  AtgSummarySumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return AtgSummarySumAggregateOutputType(query);
  }

  AtgSummaryMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return AtgSummaryMinAggregateOutputType(query);
  }

  AtgSummaryMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return AtgSummaryMaxAggregateOutputType(query);
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userLogin() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_login',
          fields: fields,
        )
      ]),
      key: r'user_login',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userPass() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_pass',
          fields: fields,
        )
      ]),
      key: r'user_pass',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userNicename() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_nicename',
          fields: fields,
        )
      ]),
      key: r'user_nicename',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userEmail() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_email',
          fields: fields,
        )
      ]),
      key: r'user_email',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userUrl() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_url',
          fields: fields,
        )
      ]),
      key: r'user_url',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userRegistered() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_registered',
          fields: fields,
        )
      ]),
      key: r'user_registered',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userActivationKey() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_activation_key',
          fields: fields,
        )
      ]),
      key: r'user_activation_key',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userStatus() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_status',
          fields: fields,
        )
      ]),
      key: r'user_status',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> displayName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'display_name',
          fields: fields,
        )
      ]),
      key: r'display_name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> userStatus() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_status',
          fields: fields,
        )
      ]),
      key: r'user_status',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<int?> userStatus() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_status',
          fields: fields,
        )
      ]),
      key: r'user_status',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> userLogin() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_login',
          fields: fields,
        )
      ]),
      key: r'user_login',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userPass() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_pass',
          fields: fields,
        )
      ]),
      key: r'user_pass',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userNicename() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_nicename',
          fields: fields,
        )
      ]),
      key: r'user_nicename',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userEmail() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_email',
          fields: fields,
        )
      ]),
      key: r'user_email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userUrl() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_url',
          fields: fields,
        )
      ]),
      key: r'user_url',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> userRegistered() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_registered',
          fields: fields,
        )
      ]),
      key: r'user_registered',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> userActivationKey() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_activation_key',
          fields: fields,
        )
      ]),
      key: r'user_activation_key',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> userStatus() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_status',
          fields: fields,
        )
      ]),
      key: r'user_status',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> displayName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'display_name',
          fields: fields,
        )
      ]),
      key: r'display_name',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<BigInt?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<String?> userLogin() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_login',
          fields: fields,
        )
      ]),
      key: r'user_login',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userPass() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_pass',
          fields: fields,
        )
      ]),
      key: r'user_pass',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userNicename() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_nicename',
          fields: fields,
        )
      ]),
      key: r'user_nicename',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userEmail() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_email',
          fields: fields,
        )
      ]),
      key: r'user_email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userUrl() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_url',
          fields: fields,
        )
      ]),
      key: r'user_url',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> userRegistered() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_registered',
          fields: fields,
        )
      ]),
      key: r'user_registered',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<String?> userActivationKey() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_activation_key',
          fields: fields,
        )
      ]),
      key: r'user_activation_key',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> userStatus() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_status',
          fields: fields,
        )
      ]),
      key: r'user_status',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> displayName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'display_name',
          fields: fields,
        )
      ]),
      key: r'display_name',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class ATGCountAggregateOutputType {
  const ATGCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> atgTimestamp() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'atg_timestamp',
          fields: fields,
        )
      ]),
      key: r'atg_timestamp',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> levelBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'level_barrel',
          fields: fields,
        )
      ]),
      key: r'level_barrel',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> volumeChangeBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'volume_change_barrel',
          fields: fields,
        )
      ]),
      key: r'volume_change_barrel',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> avgTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'avg_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'avg_temp_celcius',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> waterLevelMeter() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'water_level_meter',
          fields: fields,
        )
      ]),
      key: r'water_level_meter',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> productTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'product_temp_celcius',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> alarm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'alarm',
          fields: fields,
        )
      ]),
      key: r'alarm',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> siteId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'site_id',
          fields: fields,
        )
      ]),
      key: r'site_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ATGAvgAggregateOutputType {
  const ATGAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> levelBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'level_barrel',
          fields: fields,
        )
      ]),
      key: r'level_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> volumeChangeBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'volume_change_barrel',
          fields: fields,
        )
      ]),
      key: r'volume_change_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> avgTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'avg_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'avg_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> waterLevelMeter() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'water_level_meter',
          fields: fields,
        )
      ]),
      key: r'water_level_meter',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> productTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'product_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> siteId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'site_id',
          fields: fields,
        )
      ]),
      key: r'site_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ATGSumAggregateOutputType {
  const ATGSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> levelBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'level_barrel',
          fields: fields,
        )
      ]),
      key: r'level_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> volumeChangeBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'volume_change_barrel',
          fields: fields,
        )
      ]),
      key: r'volume_change_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> avgTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'avg_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'avg_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> waterLevelMeter() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'water_level_meter',
          fields: fields,
        )
      ]),
      key: r'water_level_meter',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> productTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'product_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<BigInt?> siteId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'site_id',
          fields: fields,
        )
      ]),
      key: r'site_id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class ATGMinAggregateOutputType {
  const ATGMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<DateTime?> atgTimestamp() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'atg_timestamp',
          fields: fields,
        )
      ]),
      key: r'atg_timestamp',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> levelBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'level_barrel',
          fields: fields,
        )
      ]),
      key: r'level_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> volumeChangeBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'volume_change_barrel',
          fields: fields,
        )
      ]),
      key: r'volume_change_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> avgTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'avg_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'avg_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> waterLevelMeter() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'water_level_meter',
          fields: fields,
        )
      ]),
      key: r'water_level_meter',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> productTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'product_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<String?> alarm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'alarm',
          fields: fields,
        )
      ]),
      key: r'alarm',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<BigInt?> siteId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'site_id',
          fields: fields,
        )
      ]),
      key: r'site_id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class ATGMaxAggregateOutputType {
  const ATGMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<DateTime?> atgTimestamp() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'atg_timestamp',
          fields: fields,
        )
      ]),
      key: r'atg_timestamp',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> levelBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'level_barrel',
          fields: fields,
        )
      ]),
      key: r'level_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> volumeChangeBarrel() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'volume_change_barrel',
          fields: fields,
        )
      ]),
      key: r'volume_change_barrel',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> avgTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'avg_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'avg_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> waterLevelMeter() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'water_level_meter',
          fields: fields,
        )
      ]),
      key: r'water_level_meter',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> productTempCelcius() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product_temp_celcius',
          fields: fields,
        )
      ]),
      key: r'product_temp_celcius',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<String?> alarm() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'alarm',
          fields: fields,
        )
      ]),
      key: r'alarm',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<BigInt?> siteId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'site_id',
          fields: fields,
        )
      ]),
      key: r'site_id',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class AtgSummaryCountAggregateOutputType {
  const AtgSummaryCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> fromDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_date',
          fields: fields,
        )
      ]),
      key: r'from_date',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> toDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'to_date',
          fields: fields,
        )
      ]),
      key: r'to_date',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> fromTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_tank_position',
          fields: fields,
        )
      ]),
      key: r'from_tank_position',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> lastTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_tank_position',
          fields: fields,
        )
      ]),
      key: r'last_tank_position',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> change() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'change',
          fields: fields,
        )
      ]),
      key: r'change',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AtgSummaryAvgAggregateOutputType {
  const AtgSummaryAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> fromTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_tank_position',
          fields: fields,
        )
      ]),
      key: r'from_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> lastTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_tank_position',
          fields: fields,
        )
      ]),
      key: r'last_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> change() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'change',
          fields: fields,
        )
      ]),
      key: r'change',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AtgSummarySumAggregateOutputType {
  const AtgSummarySumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<double?> fromTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_tank_position',
          fields: fields,
        )
      ]),
      key: r'from_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> lastTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_tank_position',
          fields: fields,
        )
      ]),
      key: r'last_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> change() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'change',
          fields: fields,
        )
      ]),
      key: r'change',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AtgSummaryMinAggregateOutputType {
  const AtgSummaryMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> fromDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_date',
          fields: fields,
        )
      ]),
      key: r'from_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> toDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'to_date',
          fields: fields,
        )
      ]),
      key: r'to_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> fromTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_tank_position',
          fields: fields,
        )
      ]),
      key: r'from_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> lastTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_tank_position',
          fields: fields,
        )
      ]),
      key: r'last_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> change() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'change',
          fields: fields,
        )
      ]),
      key: r'change',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AtgSummaryMaxAggregateOutputType {
  const AtgSummaryMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> fromDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_date',
          fields: fields,
        )
      ]),
      key: r'from_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<DateTime?> toDate() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'to_date',
          fields: fields,
        )
      ]),
      key: r'to_date',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<double?> fromTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'from_tank_position',
          fields: fields,
        )
      ]),
      key: r'from_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> lastTankPosition() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'last_tank_position',
          fields: fields,
        )
      ]),
      key: r'last_tank_position',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> change() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'change',
          fields: fields,
        )
      ]),
      key: r'change',
    );
    return query(const []).then((value) => (value as double?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7DQogICAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIg0KfQ0KDQpkYXRhc291cmNlIGRiIHsNCiAgICBwcm92aWRlciA9ICJwb3N0Z3Jlc3FsIg0KICAgIHVybCA9IGVudigiREFUQUJBU0VfVVJMIikNCn0NCg0KbW9kZWwgVXNlciB7DQogICAgaWQgQmlnSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpDQogICAgdXNlcl9sb2dpbiBTdHJpbmc/IA0KICAgIHVzZXJfcGFzcyBTdHJpbmc/IA0KICAgIHVzZXJfbmljZW5hbWUgU3RyaW5nPw0KICAgIHVzZXJfZW1haWwgU3RyaW5nPyBAdW5pcXVlIA0KICAgIHVzZXJfdXJsIFN0cmluZz8gDQogICAgdXNlcl9yZWdpc3RlcmVkIERhdGVUaW1lPyBAZGVmYXVsdChub3coKSkNCiAgICB1c2VyX2FjdGl2YXRpb25fa2V5IFN0cmluZz8gDQogICAgdXNlcl9zdGF0dXMgSW50Pw0KICAgIGRpc3BsYXlfbmFtZSBTdHJpbmc/IA0KfQ0KDQptb2RlbCBBVEcgew0KICAgIGF0Z190aW1lc3RhbXAgRGF0ZVRpbWUgQGlkDQogICAgbGV2ZWxfYmFycmVsIEZsb2F0PyBAZGVmYXVsdCgwKQ0KICAgIHZvbHVtZV9jaGFuZ2VfYmFycmVsIEZsb2F0Pw0KICAgIGF2Z190ZW1wX2NlbGNpdXMgRmxvYXQ/DQogICAgd2F0ZXJfbGV2ZWxfbWV0ZXIgRmxvYXQ/DQogICAgcHJvZHVjdF90ZW1wX2NlbGNpdXMgRmxvYXQ/DQogICAgYWxhcm0gU3RyaW5nPyANCiAgICBzaXRlX2lkIEJpZ0ludD8NCn0NCg0KbW9kZWwgQXRnU3VtbWFyeSB7DQogICAgaWQgSW50IEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpDQogICAgZnJvbV9kYXRlIERhdGVUaW1lPw0KICAgIHRvX2RhdGUgRGF0ZVRpbWU/DQogICAgZnJvbV90YW5rX3Bvc2l0aW9uIEZsb2F0PyAgIEBkZWZhdWx0KDApDQogICAgbGFzdF90YW5rX3Bvc2l0aW9uIEZsb2F0PyAgIEBkZWZhdWx0KDApDQogICAgY2hhbmdlICAgICAgICAgICAgIEZsb2F0PyAgIEBkZWZhdWx0KDApDQp9',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\Users\MKevin\AppData\Local\npm-cache\_npx\2778af9cee32ff87\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Atg> get atg => _i1.ModelDelegate<Atg>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<AtgSummary> get atgSummary => _i1.ModelDelegate<AtgSummary>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
