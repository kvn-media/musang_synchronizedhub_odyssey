library prisma.namespace.model;

class User {
  const User({
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

  factory User.fromJson(Map json) => User(
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

class Atg {
  const Atg({
    this.atgTimestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
  });

  factory Atg.fromJson(Map json) => Atg(
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

class AtgSummary {
  const AtgSummary({
    this.id,
    this.fromDate,
    this.toDate,
    this.fromTankPosition,
    this.lastTankPosition,
    this.change,
  });

  factory AtgSummary.fromJson(Map json) => AtgSummary(
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
