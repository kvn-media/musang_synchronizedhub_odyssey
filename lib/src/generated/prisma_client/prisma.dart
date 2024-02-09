// ignore_for_file: non_constant_identifier_names

library prisma.namespace.prisma; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async';

import 'package:orm/orm.dart' as _i1;

import 'client.dart';
import 'prisma.dart' as _i2;

final _client = PrismaClient();

FutureOr<T> providePrisma<T>(
    FutureOr<T> Function(PrismaClient prisma) main) async {
  try {
    return await main(_client);
  } finally {
    await _client.$disconnect();
  }
}

class NestedBigIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>?
      notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<BigInt, _i2.NestedBigIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class BigIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>?
      notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<BigInt, _i2.NestedBigIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedDateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntNullableFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.BigIntFilter, BigInt>? id;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userLogin;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userPass;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userNicename;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userEmail;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userUrl;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? userRegistered;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userActivationKey;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      userStatus;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final BigInt? id;

  final String? userEmail;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userLogin;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userPass;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userNicename;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userUrl;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? userRegistered;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userActivationKey;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      userStatus;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_email': userEmail,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
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

  final bool? id;

  final bool? userLogin;

  final bool? userPass;

  final bool? userNicename;

  final bool? userEmail;

  final bool? userUrl;

  final bool? userRegistered;

  final bool? userActivationKey;

  final bool? userStatus;

  final bool? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userLogin;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userPass;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userNicename;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userEmail;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userUrl;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userRegistered;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userActivationKey;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userStatus;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<BigInt>('id', 'User'),
  userLogin<String>('user_login', 'User'),
  userPass<String>('user_pass', 'User'),
  userNicename<String>('user_nicename', 'User'),
  userEmail<String>('user_email', 'User'),
  userUrl<String>('user_url', 'User'),
  userRegistered<DateTime>('user_registered', 'User'),
  userActivationKey<String>('user_activation_key', 'User'),
  userStatus<int>('user_status', 'User'),
  displayName<String>('display_name', 'User');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final BigInt? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userLogin;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userPass;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userNicename;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userEmail;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userUrl;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? userRegistered;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userActivationKey;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userStatus;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final BigInt? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userLogin;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userPass;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userNicename;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userEmail;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userUrl;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? userRegistered;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userActivationKey;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userStatus;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final BigInt? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userLogin;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userPass;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userNicename;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userEmail;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userUrl;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? userRegistered;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? userActivationKey;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userStatus;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class BigIntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BigIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final BigInt? set;

  final BigInt? increment;

  final BigInt? decrement;

  final BigInt? multiply;

  final BigInt? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableIntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i2.BigIntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userLogin;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userPass;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userNicename;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userEmail;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userUrl;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userRegistered;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userActivationKey;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userStatus;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i2.BigIntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userLogin;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userPass;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userNicename;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userEmail;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userUrl;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userRegistered;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userActivationKey;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userStatus;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i2.BigIntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userLogin;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userPass;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userNicename;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userEmail;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userUrl;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userRegistered;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userActivationKey;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userStatus;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i2.BigIntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userLogin;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userPass;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userNicename;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userEmail;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userUrl;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userRegistered;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userActivationKey;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userStatus;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
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
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        userLogin: json['user_login'],
        userPass: json['user_pass'],
        userNicename: json['user_nicename'],
        userEmail: json['user_email'],
        userUrl: json['user_url'],
        userRegistered: json['user_registered'],
        userActivationKey: json['user_activation_key'],
        userStatus: json['user_status'],
        displayName: json['display_name'],
        $all: json['_all'],
      );

  final int? id;

  final int? userLogin;

  final int? userPass;

  final int? userNicename;

  final int? userEmail;

  final int? userUrl;

  final int? userRegistered;

  final int? userActivationKey;

  final int? userStatus;

  final int? displayName;

  final int? $all;
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType({
    this.id,
    this.userStatus,
  });

  factory UserAvgAggregateOutputType.fromJson(Map json) =>
      UserAvgAggregateOutputType(
        id: json['id'],
        userStatus: json['user_status'],
      );

  final double? id;

  final double? userStatus;
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType({
    this.id,
    this.userStatus,
  });

  factory UserSumAggregateOutputType.fromJson(Map json) =>
      UserSumAggregateOutputType(
        id: json['id'],
        userStatus: json['user_status'],
      );

  final BigInt? id;

  final int? userStatus;
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
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

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        userLogin: json['user_login'],
        userPass: json['user_pass'],
        userNicename: json['user_nicename'],
        userEmail: json['user_email'],
        userUrl: json['user_url'],
        userRegistered: json['user_registered'],
        userActivationKey: json['user_activation_key'],
        userStatus: json['user_status'],
        displayName: json['display_name'],
      );

  final BigInt? id;

  final String? userLogin;

  final String? userPass;

  final String? userNicename;

  final String? userEmail;

  final String? userUrl;

  final DateTime? userRegistered;

  final String? userActivationKey;

  final int? userStatus;

  final String? displayName;
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
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

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        userLogin: json['user_login'],
        userPass: json['user_pass'],
        userNicename: json['user_nicename'],
        userEmail: json['user_email'],
        userUrl: json['user_url'],
        userRegistered: json['user_registered'],
        userActivationKey: json['user_activation_key'],
        userStatus: json['user_status'],
        displayName: json['display_name'],
      );

  final BigInt? id;

  final String? userLogin;

  final String? userPass;

  final String? userNicename;

  final String? userEmail;

  final String? userUrl;

  final DateTime? userRegistered;

  final String? userActivationKey;

  final int? userStatus;

  final String? displayName;
}

class UserGroupByOutputType {
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
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        userLogin: json['user_login'],
        userPass: json['user_pass'],
        userNicename: json['user_nicename'],
        userEmail: json['user_email'],
        userUrl: json['user_url'],
        userRegistered: json['user_registered'],
        userActivationKey: json['user_activation_key'],
        userStatus: json['user_status'],
        displayName: json['display_name'],
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final BigInt? id;

  final String? userLogin;

  final String? userPass;

  final String? userNicename;

  final String? userEmail;

  final String? userUrl;

  final DateTime? userRegistered;

  final String? userActivationKey;

  final int? userStatus;

  final String? displayName;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? id;

  final _i2.SortOrder? userLogin;

  final _i2.SortOrder? userPass;

  final _i2.SortOrder? userNicename;

  final _i2.SortOrder? userEmail;

  final _i2.SortOrder? userUrl;

  final _i2.SortOrder? userRegistered;

  final _i2.SortOrder? userActivationKey;

  final _i2.SortOrder? userStatus;

  final _i2.SortOrder? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgOrderByAggregateInput({
    this.id,
    this.userStatus,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userStatus;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_status': userStatus,
      };
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? id;

  final _i2.SortOrder? userLogin;

  final _i2.SortOrder? userPass;

  final _i2.SortOrder? userNicename;

  final _i2.SortOrder? userEmail;

  final _i2.SortOrder? userUrl;

  final _i2.SortOrder? userRegistered;

  final _i2.SortOrder? userActivationKey;

  final _i2.SortOrder? userStatus;

  final _i2.SortOrder? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? id;

  final _i2.SortOrder? userLogin;

  final _i2.SortOrder? userPass;

  final _i2.SortOrder? userNicename;

  final _i2.SortOrder? userEmail;

  final _i2.SortOrder? userUrl;

  final _i2.SortOrder? userRegistered;

  final _i2.SortOrder? userActivationKey;

  final _i2.SortOrder? userStatus;

  final _i2.SortOrder? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumOrderByAggregateInput({
    this.id,
    this.userStatus,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? userStatus;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_status': userStatus,
      };
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userLogin;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userPass;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userNicename;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userEmail;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userUrl;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userRegistered;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userActivationKey;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userStatus;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? displayName;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserAvgOrderByAggregateInput? $avg;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  final _i2.UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedBigIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>?
      notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<BigInt, _i2.NestedBigIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedBigIntFilter? $sum;

  final _i2.NestedBigIntFilter? $min;

  final _i2.NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class BigIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>, _i1.Reference<Iterable<BigInt>>>?
      notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<BigInt, _i2.NestedBigIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedBigIntFilter? $sum;

  final _i2.NestedBigIntFilter? $min;

  final _i2.NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i2.NestedFloatNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.BigIntWithAggregatesFilter, BigInt>? id;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userLogin;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userPass;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userNicename;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userEmail;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userUrl;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? userRegistered;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? userActivationKey;

  final _i1.PrismaUnion<_i2.IntNullableWithAggregatesFilter,
      _i1.PrismaUnion<int, _i1.PrismaNull>>? userStatus;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
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
    this.$all,
  });

  final bool? id;

  final bool? userLogin;

  final bool? userPass;

  final bool? userNicename;

  final bool? userEmail;

  final bool? userUrl;

  final bool? userRegistered;

  final bool? userActivationKey;

  final bool? userStatus;

  final bool? displayName;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgAggregateOutputTypeSelect({
    this.id,
    this.userStatus,
  });

  final bool? id;

  final bool? userStatus;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_status': userStatus,
      };
}

class UserGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumAggregateOutputTypeSelect({
    this.id,
    this.userStatus,
  });

  final bool? id;

  final bool? userStatus;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_status': userStatus,
      };
}

class UserGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
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

  final bool? id;

  final bool? userLogin;

  final bool? userPass;

  final bool? userNicename;

  final bool? userEmail;

  final bool? userUrl;

  final bool? userRegistered;

  final bool? userActivationKey;

  final bool? userStatus;

  final bool? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
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

  final bool? id;

  final bool? userLogin;

  final bool? userPass;

  final bool? userNicename;

  final bool? userEmail;

  final bool? userUrl;

  final bool? userRegistered;

  final bool? userActivationKey;

  final bool? userStatus;

  final bool? displayName;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
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
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? userLogin;

  final bool? userPass;

  final bool? userNicename;

  final bool? userEmail;

  final bool? userUrl;

  final bool? userRegistered;

  final bool? userActivationKey;

  final bool? userStatus;

  final bool? displayName;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'user_login': userLogin,
        'user_pass': userPass,
        'user_nicename': userNicename,
        'user_email': userEmail,
        'user_url': userUrl,
        'user_registered': userRegistered,
        'user_activation_key': userActivationKey,
        'user_status': userStatus,
        'display_name': displayName,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUserSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class FloatNullableFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i2.NestedFloatNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedBigIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt,
      _i1.PrismaUnion<_i1.Reference<BigInt>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<BigInt,
      _i1.PrismaUnion<_i2.NestedBigIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class BigIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt,
      _i1.PrismaUnion<_i1.Reference<BigInt>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<BigInt,
      _i1.PrismaUnion<_i2.NestedBigIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class ATGWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<_i2.ATGWhereInput, Iterable<_i2.ATGWhereInput>>? AND;

  final Iterable<_i2.ATGWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ATGWhereInput, Iterable<_i2.ATGWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? atgTimestamp;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? levelBarrel;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? volumeChangeBarrel;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? avgTempCelcius;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? waterLevelMeter;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? productTempCelcius;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? alarm;

  final _i1.PrismaUnion<_i2.BigIntNullableFilter,
      _i1.PrismaUnion<BigInt, _i1.PrismaNull>>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGWhereUniqueInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final DateTime? atgTimestamp;

  final _i1.PrismaUnion<_i2.ATGWhereInput, Iterable<_i2.ATGWhereInput>>? AND;

  final Iterable<_i2.ATGWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ATGWhereInput, Iterable<_i2.ATGWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? levelBarrel;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? volumeChangeBarrel;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? avgTempCelcius;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? waterLevelMeter;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? productTempCelcius;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? alarm;

  final _i1.PrismaUnion<_i2.BigIntNullableFilter,
      _i1.PrismaUnion<BigInt, _i1.PrismaNull>>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class AtgSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSelect({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  final bool? atgTimestamp;

  final bool? levelBarrel;

  final bool? volumeChangeBarrel;

  final bool? avgTempCelcius;

  final bool? waterLevelMeter;

  final bool? productTempCelcius;

  final bool? alarm;

  final bool? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? atgTimestamp;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? levelBarrel;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? volumeChangeBarrel;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? avgTempCelcius;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? waterLevelMeter;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? productTempCelcius;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? alarm;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

enum ATGScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  atgTimestamp<DateTime>('atg_timestamp', 'ATG'),
  levelBarrel<double>('level_barrel', 'ATG'),
  volumeChangeBarrel<double>('volume_change_barrel', 'ATG'),
  avgTempCelcius<double>('avg_temp_celcius', 'ATG'),
  waterLevelMeter<double>('water_level_meter', 'ATG'),
  productTempCelcius<double>('product_temp_celcius', 'ATG'),
  alarm<String>('alarm', 'ATG'),
  siteId<BigInt>('site_id', 'ATG');

  const ATGScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ATGCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final DateTime atgTimestamp;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? levelBarrel;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? volumeChangeBarrel;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? avgTempCelcius;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? waterLevelMeter;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? productTempCelcius;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? alarm;

  final _i1.PrismaUnion<BigInt, _i1.PrismaNull>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final DateTime atgTimestamp;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? levelBarrel;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? volumeChangeBarrel;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? avgTempCelcius;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? waterLevelMeter;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? productTempCelcius;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? alarm;

  final _i1.PrismaUnion<BigInt, _i1.PrismaNull>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final DateTime atgTimestamp;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? levelBarrel;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? volumeChangeBarrel;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? avgTempCelcius;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? waterLevelMeter;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? productTempCelcius;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? alarm;

  final _i1.PrismaUnion<BigInt, _i1.PrismaNull>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableFloatFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableFloatFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<double, _i1.PrismaNull>? set;

  final double? increment;

  final double? decrement;

  final double? multiply;

  final double? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class NullableBigIntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableBigIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<BigInt, _i1.PrismaNull>? set;

  final BigInt? increment;

  final BigInt? decrement;

  final BigInt? multiply;

  final BigInt? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class ATGUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      atgTimestamp;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? levelBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? volumeChangeBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? avgTempCelcius;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? waterLevelMeter;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productTempCelcius;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? alarm;

  final _i1.PrismaUnion<
      BigInt,
      _i1.PrismaUnion<_i2.NullableBigIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      atgTimestamp;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? levelBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? volumeChangeBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? avgTempCelcius;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? waterLevelMeter;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productTempCelcius;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? alarm;

  final _i1.PrismaUnion<
      BigInt,
      _i1.PrismaUnion<_i2.NullableBigIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      atgTimestamp;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? levelBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? volumeChangeBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? avgTempCelcius;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? waterLevelMeter;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productTempCelcius;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? alarm;

  final _i1.PrismaUnion<
      BigInt,
      _i1.PrismaUnion<_i2.NullableBigIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      atgTimestamp;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? levelBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? volumeChangeBarrel;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? avgTempCelcius;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? waterLevelMeter;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productTempCelcius;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? alarm;

  final _i1.PrismaUnion<
      BigInt,
      _i1.PrismaUnion<_i2.NullableBigIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGCountAggregateOutputType {
  const ATGCountAggregateOutputType({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
    this.$all,
  });

  factory ATGCountAggregateOutputType.fromJson(Map json) =>
      ATGCountAggregateOutputType(
        atgTimestamp: json['atg_timestamp'],
        levelBarrel: json['level_barrel'],
        volumeChangeBarrel: json['volume_change_barrel'],
        avgTempCelcius: json['avg_temp_celcius'],
        waterLevelMeter: json['water_level_meter'],
        productTempCelcius: json['product_temp_celcius'],
        alarm: json['alarm'],
        siteId: json['site_id'],
        $all: json['_all'],
      );

  final int? atgTimestamp;

  final int? levelBarrel;

  final int? volumeChangeBarrel;

  final int? avgTempCelcius;

  final int? waterLevelMeter;

  final int? productTempCelcius;

  final int? alarm;

  final int? siteId;

  final int? $all;
}

class ATGAvgAggregateOutputType {
  const ATGAvgAggregateOutputType({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  factory ATGAvgAggregateOutputType.fromJson(Map json) =>
      ATGAvgAggregateOutputType(
        levelBarrel: json['level_barrel'],
        volumeChangeBarrel: json['volume_change_barrel'],
        avgTempCelcius: json['avg_temp_celcius'],
        waterLevelMeter: json['water_level_meter'],
        productTempCelcius: json['product_temp_celcius'],
        siteId: json['site_id'],
      );

  final double? levelBarrel;

  final double? volumeChangeBarrel;

  final double? avgTempCelcius;

  final double? waterLevelMeter;

  final double? productTempCelcius;

  final double? siteId;
}

class ATGSumAggregateOutputType {
  const ATGSumAggregateOutputType({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  factory ATGSumAggregateOutputType.fromJson(Map json) =>
      ATGSumAggregateOutputType(
        levelBarrel: json['level_barrel'],
        volumeChangeBarrel: json['volume_change_barrel'],
        avgTempCelcius: json['avg_temp_celcius'],
        waterLevelMeter: json['water_level_meter'],
        productTempCelcius: json['product_temp_celcius'],
        siteId: json['site_id'],
      );

  final double? levelBarrel;

  final double? volumeChangeBarrel;

  final double? avgTempCelcius;

  final double? waterLevelMeter;

  final double? productTempCelcius;

  final BigInt? siteId;
}

class ATGMinAggregateOutputType {
  const ATGMinAggregateOutputType({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGMinAggregateOutputType.fromJson(Map json) =>
      ATGMinAggregateOutputType(
        atgTimestamp: json['atg_timestamp'],
        levelBarrel: json['level_barrel'],
        volumeChangeBarrel: json['volume_change_barrel'],
        avgTempCelcius: json['avg_temp_celcius'],
        waterLevelMeter: json['water_level_meter'],
        productTempCelcius: json['product_temp_celcius'],
        alarm: json['alarm'],
        siteId: json['site_id'],
      );

  final DateTime? atgTimestamp;

  final double? levelBarrel;

  final double? volumeChangeBarrel;

  final double? avgTempCelcius;

  final double? waterLevelMeter;

  final double? productTempCelcius;

  final String? alarm;

  final BigInt? siteId;
}

class ATGMaxAggregateOutputType {
  const ATGMaxAggregateOutputType({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory ATGMaxAggregateOutputType.fromJson(Map json) =>
      ATGMaxAggregateOutputType(
        atgTimestamp: json['atg_timestamp'],
        levelBarrel: json['level_barrel'],
        volumeChangeBarrel: json['volume_change_barrel'],
        avgTempCelcius: json['avg_temp_celcius'],
        waterLevelMeter: json['water_level_meter'],
        productTempCelcius: json['product_temp_celcius'],
        alarm: json['alarm'],
        siteId: json['site_id'],
      );

  final DateTime? atgTimestamp;

  final double? levelBarrel;

  final double? volumeChangeBarrel;

  final double? avgTempCelcius;

  final double? waterLevelMeter;

  final double? productTempCelcius;

  final String? alarm;

  final BigInt? siteId;
}

class ATGGroupByOutputType {
  const ATGGroupByOutputType({
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
    this.$sum,
    this.$min,
    this.$max,
  });

  factory ATGGroupByOutputType.fromJson(Map json) => ATGGroupByOutputType(
        atgTimestamp: json['atg_timestamp'],
        levelBarrel: json['level_barrel'],
        volumeChangeBarrel: json['volume_change_barrel'],
        avgTempCelcius: json['avg_temp_celcius'],
        waterLevelMeter: json['water_level_meter'],
        productTempCelcius: json['product_temp_celcius'],
        alarm: json['alarm'],
        siteId: json['site_id'],
        $count: json['_count'] is Map
            ? _i2.ATGCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ATGAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ATGSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ATGMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ATGMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final DateTime? atgTimestamp;

  final double? levelBarrel;

  final double? volumeChangeBarrel;

  final double? avgTempCelcius;

  final double? waterLevelMeter;

  final double? productTempCelcius;

  final String? alarm;

  final BigInt? siteId;

  final _i2.ATGCountAggregateOutputType? $count;

  final _i2.ATGAvgAggregateOutputType? $avg;

  final _i2.ATGSumAggregateOutputType? $sum;

  final _i2.ATGMinAggregateOutputType? $min;

  final _i2.ATGMaxAggregateOutputType? $max;
}

class ATGCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? atgTimestamp;

  final _i2.SortOrder? levelBarrel;

  final _i2.SortOrder? volumeChangeBarrel;

  final _i2.SortOrder? avgTempCelcius;

  final _i2.SortOrder? waterLevelMeter;

  final _i2.SortOrder? productTempCelcius;

  final _i2.SortOrder? alarm;

  final _i2.SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGAvgOrderByAggregateInput({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  final _i2.SortOrder? levelBarrel;

  final _i2.SortOrder? volumeChangeBarrel;

  final _i2.SortOrder? avgTempCelcius;

  final _i2.SortOrder? waterLevelMeter;

  final _i2.SortOrder? productTempCelcius;

  final _i2.SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'site_id': siteId,
      };
}

class ATGMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? atgTimestamp;

  final _i2.SortOrder? levelBarrel;

  final _i2.SortOrder? volumeChangeBarrel;

  final _i2.SortOrder? avgTempCelcius;

  final _i2.SortOrder? waterLevelMeter;

  final _i2.SortOrder? productTempCelcius;

  final _i2.SortOrder? alarm;

  final _i2.SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? atgTimestamp;

  final _i2.SortOrder? levelBarrel;

  final _i2.SortOrder? volumeChangeBarrel;

  final _i2.SortOrder? avgTempCelcius;

  final _i2.SortOrder? waterLevelMeter;

  final _i2.SortOrder? productTempCelcius;

  final _i2.SortOrder? alarm;

  final _i2.SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGSumOrderByAggregateInput({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  final _i2.SortOrder? levelBarrel;

  final _i2.SortOrder? volumeChangeBarrel;

  final _i2.SortOrder? avgTempCelcius;

  final _i2.SortOrder? waterLevelMeter;

  final _i2.SortOrder? productTempCelcius;

  final _i2.SortOrder? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'site_id': siteId,
      };
}

class ATGOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? atgTimestamp;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? levelBarrel;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? volumeChangeBarrel;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? avgTempCelcius;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? waterLevelMeter;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? productTempCelcius;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? alarm;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? siteId;

  final _i2.ATGCountOrderByAggregateInput? $count;

  final _i2.ATGAvgOrderByAggregateInput? $avg;

  final _i2.ATGMaxOrderByAggregateInput? $max;

  final _i2.ATGMinOrderByAggregateInput? $min;

  final _i2.ATGSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NestedFloatNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedFloatNullableFilter? $sum;

  final _i2.NestedFloatNullableFilter? $min;

  final _i2.NestedFloatNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class FloatNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NestedFloatNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedFloatNullableFilter? $sum;

  final _i2.NestedFloatNullableFilter? $min;

  final _i2.NestedFloatNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class NestedBigIntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt,
      _i1.PrismaUnion<_i1.Reference<BigInt>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<
      BigInt,
      _i1.PrismaUnion<_i2.NestedBigIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedBigIntNullableFilter? $sum;

  final _i2.NestedBigIntNullableFilter? $min;

  final _i2.NestedBigIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class BigIntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<BigInt,
      _i1.PrismaUnion<_i1.Reference<BigInt>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<BigInt>,
      _i1.PrismaUnion<_i1.Reference<Iterable<BigInt>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? lte;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gt;

  final _i1.PrismaUnion<BigInt, _i1.Reference<BigInt>>? gte;

  final _i1.PrismaUnion<
      BigInt,
      _i1.PrismaUnion<_i2.NestedBigIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedBigIntNullableFilter? $sum;

  final _i2.NestedBigIntNullableFilter? $min;

  final _i2.NestedBigIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class ATGScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<_i2.ATGScalarWhereWithAggregatesInput,
      Iterable<_i2.ATGScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ATGScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ATGScalarWhereWithAggregatesInput,
      Iterable<_i2.ATGScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>?
      atgTimestamp;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? levelBarrel;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? volumeChangeBarrel;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? avgTempCelcius;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? waterLevelMeter;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? productTempCelcius;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? alarm;

  final _i1.PrismaUnion<_i2.BigIntNullableWithAggregatesFilter,
      _i1.PrismaUnion<BigInt, _i1.PrismaNull>>? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGCountAggregateOutputTypeSelect({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
    this.$all,
  });

  final bool? atgTimestamp;

  final bool? levelBarrel;

  final bool? volumeChangeBarrel;

  final bool? avgTempCelcius;

  final bool? waterLevelMeter;

  final bool? productTempCelcius;

  final bool? alarm;

  final bool? siteId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
        '_all': $all,
      };
}

class ATGGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGGroupByOutputTypeCountArgs({this.select});

  final _i2.ATGCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ATGAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGAvgAggregateOutputTypeSelect({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  final bool? levelBarrel;

  final bool? volumeChangeBarrel;

  final bool? avgTempCelcius;

  final bool? waterLevelMeter;

  final bool? productTempCelcius;

  final bool? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'site_id': siteId,
      };
}

class ATGGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGGroupByOutputTypeAvgArgs({this.select});

  final _i2.ATGAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ATGSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGSumAggregateOutputTypeSelect({
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.siteId,
  });

  final bool? levelBarrel;

  final bool? volumeChangeBarrel;

  final bool? avgTempCelcius;

  final bool? waterLevelMeter;

  final bool? productTempCelcius;

  final bool? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'site_id': siteId,
      };
}

class ATGGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGGroupByOutputTypeSumArgs({this.select});

  final _i2.ATGSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ATGMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGMinAggregateOutputTypeSelect({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  final bool? atgTimestamp;

  final bool? levelBarrel;

  final bool? volumeChangeBarrel;

  final bool? avgTempCelcius;

  final bool? waterLevelMeter;

  final bool? productTempCelcius;

  final bool? alarm;

  final bool? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGGroupByOutputTypeMinArgs({this.select});

  final _i2.ATGMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ATGMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGMaxAggregateOutputTypeSelect({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  final bool? atgTimestamp;

  final bool? levelBarrel;

  final bool? volumeChangeBarrel;

  final bool? avgTempCelcius;

  final bool? waterLevelMeter;

  final bool? productTempCelcius;

  final bool? alarm;

  final bool? siteId;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
      };
}

class ATGGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGGroupByOutputTypeMaxArgs({this.select});

  final _i2.ATGMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ATGGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ATGGroupByOutputTypeSelect({
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
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? atgTimestamp;

  final bool? levelBarrel;

  final bool? volumeChangeBarrel;

  final bool? avgTempCelcius;

  final bool? waterLevelMeter;

  final bool? productTempCelcius;

  final bool? alarm;

  final bool? siteId;

  final _i1.PrismaUnion<bool, _i2.ATGGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ATGGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.ATGGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.ATGGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ATGGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'atg_timestamp': atgTimestamp,
        'level_barrel': levelBarrel,
        'volume_change_barrel': volumeChangeBarrel,
        'avg_temp_celcius': avgTempCelcius,
        'water_level_meter': waterLevelMeter,
        'product_temp_celcius': productTempCelcius,
        'alarm': alarm,
        'site_id': siteId,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateATG {
  const AggregateATG({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateATG.fromJson(Map json) => AggregateATG(
        $count: json['_count'] is Map
            ? _i2.ATGCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ATGAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ATGSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ATGMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ATGMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ATGCountAggregateOutputType? $count;

  final _i2.ATGAvgAggregateOutputType? $avg;

  final _i2.ATGSumAggregateOutputType? $sum;

  final _i2.ATGMinAggregateOutputType? $min;

  final _i2.ATGMaxAggregateOutputType? $max;
}

class AggregateATGCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateATGCountArgs({this.select});

  final _i2.ATGCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateATGAvgArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateATGAvgArgs({this.select});

  final _i2.ATGAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateATGSumArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateATGSumArgs({this.select});

  final _i2.ATGSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateATGMinArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateATGMinArgs({this.select});

  final _i2.ATGMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateATGMaxArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateATGMaxArgs({this.select});

  final _i2.ATGMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateATGSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateATGSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateATGCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateATGAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateATGSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateATGMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateATGMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class AtgSummaryWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<_i2.AtgSummaryWhereInput,
      Iterable<_i2.AtgSummaryWhereInput>>? AND;

  final Iterable<_i2.AtgSummaryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AtgSummaryWhereInput,
      Iterable<_i2.AtgSummaryWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? fromDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? toDate;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? fromTankPosition;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? lastTankPosition;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? change;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final int? id;

  final _i1.PrismaUnion<_i2.AtgSummaryWhereInput,
      Iterable<_i2.AtgSummaryWhereInput>>? AND;

  final Iterable<_i2.AtgSummaryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AtgSummaryWhereInput,
      Iterable<_i2.AtgSummaryWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? fromDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? toDate;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? fromTankPosition;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? lastTankPosition;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummarySelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummarySelect({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final bool? id;

  final bool? fromDate;

  final bool? toDate;

  final bool? fromTankPosition;

  final bool? lastTankPosition;

  final bool? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryOrderByWithRelationInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? fromDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? toDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? fromTankPosition;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? lastTankPosition;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

enum AtgSummaryScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'AtgSummary'),
  fromDate<DateTime>('from_date', 'AtgSummary'),
  toDate<DateTime>('to_date', 'AtgSummary'),
  fromTankPosition<double>('from_tank_position', 'AtgSummary'),
  lastTankPosition<double>('last_tank_position', 'AtgSummary'),
  change<double>('change', 'AtgSummary');

  const AtgSummaryScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class AtgSummaryCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryCreateInput({
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? fromDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? toDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? fromTankPosition;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? lastTankPosition;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? change;

  @override
  Map<String, dynamic> toJson() => {
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryUncheckedCreateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final int? id;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? fromDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? toDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? fromTankPosition;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? lastTankPosition;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryCreateManyInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final int? id;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? fromDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? toDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? fromTankPosition;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? lastTankPosition;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryUpdateInput({
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? toDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? change;

  @override
  Map<String, dynamic> toJson() => {
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class AtgSummaryUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryUncheckedUpdateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? toDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryUpdateManyMutationInput({
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? toDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? change;

  @override
  Map<String, dynamic> toJson() => {
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryUncheckedUpdateManyInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? toDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? fromTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? lastTankPosition;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryCountAggregateOutputType {
  const AtgSummaryCountAggregateOutputType({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
    this.$all,
  });

  factory AtgSummaryCountAggregateOutputType.fromJson(Map json) =>
      AtgSummaryCountAggregateOutputType(
        id: json['id'],
        fromDate: json['from_date'],
        toDate: json['to_date'],
        fromTankPosition: json['from_tank_position'],
        lastTankPosition: json['last_tank_position'],
        change: json['change'],
        $all: json['_all'],
      );

  final int? id;

  final int? fromDate;

  final int? toDate;

  final int? fromTankPosition;

  final int? lastTankPosition;

  final int? change;

  final int? $all;
}

class AtgSummaryAvgAggregateOutputType {
  const AtgSummaryAvgAggregateOutputType({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryAvgAggregateOutputType.fromJson(Map json) =>
      AtgSummaryAvgAggregateOutputType(
        id: json['id'],
        fromTankPosition: json['from_tank_position'],
        lastTankPosition: json['last_tank_position'],
        change: json['change'],
      );

  final double? id;

  final double? fromTankPosition;

  final double? lastTankPosition;

  final double? change;
}

class AtgSummarySumAggregateOutputType {
  const AtgSummarySumAggregateOutputType({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummarySumAggregateOutputType.fromJson(Map json) =>
      AtgSummarySumAggregateOutputType(
        id: json['id'],
        fromTankPosition: json['from_tank_position'],
        lastTankPosition: json['last_tank_position'],
        change: json['change'],
      );

  final int? id;

  final double? fromTankPosition;

  final double? lastTankPosition;

  final double? change;
}

class AtgSummaryMinAggregateOutputType {
  const AtgSummaryMinAggregateOutputType({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryMinAggregateOutputType.fromJson(Map json) =>
      AtgSummaryMinAggregateOutputType(
        id: json['id'],
        fromDate: json['from_date'],
        toDate: json['to_date'],
        fromTankPosition: json['from_tank_position'],
        lastTankPosition: json['last_tank_position'],
        change: json['change'],
      );

  final int? id;

  final DateTime? fromDate;

  final DateTime? toDate;

  final double? fromTankPosition;

  final double? lastTankPosition;

  final double? change;
}

class AtgSummaryMaxAggregateOutputType {
  const AtgSummaryMaxAggregateOutputType({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummaryMaxAggregateOutputType.fromJson(Map json) =>
      AtgSummaryMaxAggregateOutputType(
        id: json['id'],
        fromDate: json['from_date'],
        toDate: json['to_date'],
        fromTankPosition: json['from_tank_position'],
        lastTankPosition: json['last_tank_position'],
        change: json['change'],
      );

  final int? id;

  final DateTime? fromDate;

  final DateTime? toDate;

  final double? fromTankPosition;

  final double? lastTankPosition;

  final double? change;
}

class AtgSummaryGroupByOutputType {
  const AtgSummaryGroupByOutputType({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AtgSummaryGroupByOutputType.fromJson(Map json) =>
      AtgSummaryGroupByOutputType(
        id: json['id'],
        fromDate: json['from_date'],
        toDate: json['to_date'],
        fromTankPosition: json['from_tank_position'],
        lastTankPosition: json['last_tank_position'],
        change: json['change'],
        $count: json['_count'] is Map
            ? _i2.AtgSummaryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.AtgSummaryAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.AtgSummarySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AtgSummaryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AtgSummaryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final DateTime? fromDate;

  final DateTime? toDate;

  final double? fromTankPosition;

  final double? lastTankPosition;

  final double? change;

  final _i2.AtgSummaryCountAggregateOutputType? $count;

  final _i2.AtgSummaryAvgAggregateOutputType? $avg;

  final _i2.AtgSummarySumAggregateOutputType? $sum;

  final _i2.AtgSummaryMinAggregateOutputType? $min;

  final _i2.AtgSummaryMaxAggregateOutputType? $max;
}

class AtgSummaryCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryCountOrderByAggregateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fromDate;

  final _i2.SortOrder? toDate;

  final _i2.SortOrder? fromTankPosition;

  final _i2.SortOrder? lastTankPosition;

  final _i2.SortOrder? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryAvgOrderByAggregateInput({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fromTankPosition;

  final _i2.SortOrder? lastTankPosition;

  final _i2.SortOrder? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryMaxOrderByAggregateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fromDate;

  final _i2.SortOrder? toDate;

  final _i2.SortOrder? fromTankPosition;

  final _i2.SortOrder? lastTankPosition;

  final _i2.SortOrder? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryMinOrderByAggregateInput({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fromDate;

  final _i2.SortOrder? toDate;

  final _i2.SortOrder? fromTankPosition;

  final _i2.SortOrder? lastTankPosition;

  final _i2.SortOrder? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummarySumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummarySumOrderByAggregateInput({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? fromTankPosition;

  final _i2.SortOrder? lastTankPosition;

  final _i2.SortOrder? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? fromDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? toDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? fromTankPosition;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? lastTankPosition;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? change;

  final _i2.AtgSummaryCountOrderByAggregateInput? $count;

  final _i2.AtgSummaryAvgOrderByAggregateInput? $avg;

  final _i2.AtgSummaryMaxOrderByAggregateInput? $max;

  final _i2.AtgSummaryMinOrderByAggregateInput? $min;

  final _i2.AtgSummarySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AtgSummaryScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
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

  final _i1.PrismaUnion<_i2.AtgSummaryScalarWhereWithAggregatesInput,
      Iterable<_i2.AtgSummaryScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.AtgSummaryScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.AtgSummaryScalarWhereWithAggregatesInput,
      Iterable<_i2.AtgSummaryScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? fromDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? toDate;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? fromTankPosition;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? lastTankPosition;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? change;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryCountAggregateOutputTypeSelect({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
    this.$all,
  });

  final bool? id;

  final bool? fromDate;

  final bool? toDate;

  final bool? fromTankPosition;

  final bool? lastTankPosition;

  final bool? change;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
        '_all': $all,
      };
}

class AtgSummaryGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryGroupByOutputTypeCountArgs({this.select});

  final _i2.AtgSummaryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AtgSummaryAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryAvgAggregateOutputTypeSelect({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final bool? id;

  final bool? fromTankPosition;

  final bool? lastTankPosition;

  final bool? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryGroupByOutputTypeAvgArgs({this.select});

  final _i2.AtgSummaryAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AtgSummarySumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummarySumAggregateOutputTypeSelect({
    this.id,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final bool? id;

  final bool? fromTankPosition;

  final bool? lastTankPosition;

  final bool? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryGroupByOutputTypeSumArgs({this.select});

  final _i2.AtgSummarySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AtgSummaryMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryMinAggregateOutputTypeSelect({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final bool? id;

  final bool? fromDate;

  final bool? toDate;

  final bool? fromTankPosition;

  final bool? lastTankPosition;

  final bool? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryGroupByOutputTypeMinArgs({this.select});

  final _i2.AtgSummaryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AtgSummaryMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryMaxAggregateOutputTypeSelect({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  final bool? id;

  final bool? fromDate;

  final bool? toDate;

  final bool? fromTankPosition;

  final bool? lastTankPosition;

  final bool? change;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
      };
}

class AtgSummaryGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryGroupByOutputTypeMaxArgs({this.select});

  final _i2.AtgSummaryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AtgSummaryGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AtgSummaryGroupByOutputTypeSelect({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? fromDate;

  final bool? toDate;

  final bool? fromTankPosition;

  final bool? lastTankPosition;

  final bool? change;

  final _i1.PrismaUnion<bool, _i2.AtgSummaryGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AtgSummaryGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AtgSummaryGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AtgSummaryGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AtgSummaryGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'from_date': fromDate,
        'to_date': toDate,
        'from_tank_position': fromTankPosition,
        'last_tank_position': lastTankPosition,
        'change': change,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateAtgSummary {
  const AggregateAtgSummary({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateAtgSummary.fromJson(Map json) => AggregateAtgSummary(
        $count: json['_count'] is Map
            ? _i2.AtgSummaryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.AtgSummaryAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.AtgSummarySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AtgSummaryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AtgSummaryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.AtgSummaryCountAggregateOutputType? $count;

  final _i2.AtgSummaryAvgAggregateOutputType? $avg;

  final _i2.AtgSummarySumAggregateOutputType? $sum;

  final _i2.AtgSummaryMinAggregateOutputType? $min;

  final _i2.AtgSummaryMaxAggregateOutputType? $max;
}

class AggregateAtgSummaryCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAtgSummaryCountArgs({this.select});

  final _i2.AtgSummaryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAtgSummaryAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAtgSummaryAvgArgs({this.select});

  final _i2.AtgSummaryAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAtgSummarySumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAtgSummarySumArgs({this.select});

  final _i2.AtgSummarySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAtgSummaryMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAtgSummaryMinArgs({this.select});

  final _i2.AtgSummaryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAtgSummaryMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAtgSummaryMaxArgs({this.select});

  final _i2.AtgSummaryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAtgSummarySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAtgSummarySelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateAtgSummaryCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateAtgSummaryAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateAtgSummarySumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateAtgSummaryMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateAtgSummaryMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
