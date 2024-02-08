import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:uuid/uuid.dart';

part 'database.g.dart';

// Define the database table
@DataClassName('ATGModel')
class ATGModel extends Table {
  // Define columns
  UuidColumn get id => customType(PgTypes.uuid).withDefault(genRandomUuid())();
  TextColumn get timestamp => text()();
  TextColumn get alarm => text()();
  TextColumn get category => text()();
  IntColumn get levelBarrel => integer().nullable()();
  IntColumn get volumeChangeBarrel => integer().nullable()();
  IntColumn get avgTempCelcius => integer().nullable()();
  RealColumn get waterLevelMeter => real().nullable()();
  IntColumn get productTempCelcius => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// Define database class
@DriftDatabase(tables: [ATGModel])
class DriftPostgresDatabase extends _$DriftPostgresDatabase {
  // Provide constructor
  DriftPostgresDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

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
