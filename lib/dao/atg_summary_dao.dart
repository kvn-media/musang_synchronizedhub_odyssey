import 'package:musang_syncronizehub_odyssey/prisma/generated_dart_client/client.dart';
import 'package:musang_syncronizehub_odyssey/prisma/generated_dart_client/prisma.dart';
import 'package:orm/orm.dart';

class AtgSummaryDAO {
  createAtgSumMultipleRecords(PrismaClient prisma) async {
    final affectedRows = await prisma.atgSummary.createMany(
      data: PrismaUnion.$2(
        [
          AtgSummaryCreateManyInput(
            fromDate: PrismaUnion.$1(DateTime.parse("2024-01-10 10:00:00")),
            toDate: PrismaUnion.$1(DateTime.parse("2024-01-10 14:00:00")),
            fromTankPosition: PrismaUnion.$1(1000.0),
            lastTankPosition: PrismaUnion.$1(930.0),
            change: PrismaUnion.$1(-70.0),
          ),
        ],
      ),
    );

    print({
      "count": affectedRows.count,
    });

    final summary = await prisma.atgSummary.findMany();
  }
}
