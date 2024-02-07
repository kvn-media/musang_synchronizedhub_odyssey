import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:postgres/postgres.dart';

// Define the database table
@DataClassName('ATGModel')
class ATGModels extends Table {
  TextColumn get timestamp => text()();
  TextColumn get alarm => text()();
  TextColumn get category => text()();
  IntColumn get levelBarrel => integer().nullable()();
  IntColumn get volumeChangeBarrel => integer().nullable()();
  IntColumn get avgTempCelcius => integer().nullable()();
  RealColumn get waterLevelMeter => real().nullable()();
  IntColumn get productTempCelcius => integer().nullable()();
}

// Define your database class
@DriftDatabase(tables: [ATGModels])
class MyDatabase extends _$MyDatabase {
  // Constructor
  MyDatabase(QueryExecutor e) : super(e);

  // Define the initial schema version
  @override
  int get schemaVersion => 1;

  // Define the migration strategy
  @override
  MigrationStrategy get migration => MigrationStrategy(
        // Callback function called when upgrading the database schema
        onUpgrade: (migrator, from, to) async {
          if (from == 1 && to == 2) {
            // Get the TableInfo object for ATGModels
            final table = ATGModels.table;

            // Perform migration from version 1 to version 2
            await migrator.addColumn(
              table,
              table.alarm,
            );
            await migrator.addColumn(
              table,
              table.category,
            );
            await migrator.addColumn(
              table,
              table.levelBarrel,
            );
            await migrator.addColumn(
              table,
              table.volumeChangeBarrel,
            );
            await migrator.addColumn(
              table,
              table.avgTempCelcius,
            );
            await migrator.addColumn(
              table,
              table.waterLevelMeter,
            );
            await migrator.addColumn(
              table,
              table.productTempCelcius,
            );
          }
          // Add more migration steps as needed for other versions
        },
        // Callback function called before opening the database
        beforeOpen: (details) async {
          // Database opening logic before migration, if needed
          final connection = await PostgreSQLConnection.connect(
            ConnectionSettings(
              host: 'localhost',
              port: 5433,
              database: 'musangten',
              username: 'postgres',
              password: 'LycoReco',
            ),
          );

          details.executor = LazyDatabase(() => NativeDatabase(connection,
              supportedTypeMapping: TypeMapping.defaults));
        },
      );
}
