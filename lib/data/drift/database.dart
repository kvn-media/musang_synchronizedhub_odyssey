import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart' as pg;

part 'database.g.dart';

// Define the database table
@DataClassName("User")
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userLogin => text().nullable()();
  TextColumn get userPass => text().nullable()();
  TextColumn get userNicename => text().nullable()();
  TextColumn get userEmail => text().nullable()();
  TextColumn get userUrl => text().nullable()();
  DateTimeColumn get userRegistered => dateTime().nullable()();
  TextColumn get userActivationKey => text().nullable()();
  IntColumn get userStatus => integer().nullable()();
  TextColumn get displayName => text().nullable()();
}

@DataClassName("ATG")
class ATGs extends Table {
  DateTimeColumn get atgTimestamp => dateTime()();
  RealColumn get levelBarrel => real().withDefault(const Constant(0))();
  RealColumn get volumeChangeBarrel => real().nullable()();
  RealColumn get avgTempCelcius => real().nullable()();
  RealColumn get waterLevelMeter => real().nullable()();
  RealColumn get productTempCelcius => real().nullable()();
  TextColumn get alarm => text().nullable()();
  IntColumn get siteId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {atgTimestamp};
}

@DataClassName('FlowMeter')
class FlowMeters extends Table {
  UuidColumn get id => customType(PgTypes.uuid).withDefault(genRandomUuid())();
  TextColumn get timestamp => text()();
  IntColumn get flowRateGpm => integer().nullable()();
  IntColumn get totalFlowGalon => integer().nullable()();
  IntColumn get tempFahrenheit => integer().nullable()();
  IntColumn get pressurePsi => integer().nullable()();
  RealColumn get densitylbGal => real().nullable()();
  IntColumn get viscosityCp => integer().nullable()();
  IntColumn get apiGravity => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName("ATGSummary")
class ATGSummaries extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get fromDate => dateTime().nullable()();
  DateTimeColumn get toDate => dateTime().nullable()();
  RealColumn get fromTankPosition => real().withDefault(const Constant(0))();
  RealColumn get lastTankPosition => real().withDefault(const Constant(0))();
  RealColumn get change => real().withDefault(const Constant(0))();
}

// Define database class
@DriftDatabase(tables: [ATGs, FlowMeters, Users, ATGSummaries])
class DriftPostgresDatabase extends _$DriftPostgresDatabase {
  // Provide constructor
  DriftPostgresDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 2;

  // Define migration scripts if needed
  @override
  MigrationStrategy get migration => MigrationStrategy(
        // Define migration actions
        onCreate: (m) async {
          await m.createAll();
        },
        // Define migration actions
        onUpgrade: (m, from, to) async {
          // Migration from previous version to new version
        },
        // Define migration actions
        beforeOpen: (details) async {
          // Actions before opening database
        },
      );
}

Future<void> initializeDatabase() async {
  final database = DriftPostgresDatabase(
    PgDatabase(
      endpoint: pg.Endpoint(
        host: 'localhost',
        port: 5433,
        database: 'musangten',
        username: 'postgres',
        password: 'LycoReco',
      ),
      settings: pg.ConnectionSettings(
        sslMode: pg.SslMode.disable,
      ),
      logStatements: true,
    ),
  );

  await database.executor.ensureOpen(database);
}

Future<void> closeDatabase(PgDatabase executor) async {
  await executor.close();
}
