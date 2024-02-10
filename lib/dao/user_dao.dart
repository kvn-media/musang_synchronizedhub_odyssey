import '../src/generated/prisma_client/client.dart';
import '../src/generated/prisma_client/prisma.dart';
import 'package:orm/orm.dart';

createUserMultipleRecords(PrismaClient prisma) async {
  final affectedRows = await prisma.user.createMany(
    data: PrismaUnion.$2(
      [
        UserCreateManyInput(
          userLogin: PrismaUnion.$1("musang"),
          userPass: PrismaUnion.$1("musang"),
          userNicename: PrismaUnion.$1("Musang Teknologi Nusantara"),
          userEmail: PrismaUnion.$1("support@musangten.com"),
          userUrl: null,
          userRegistered: PrismaUnion.$1(DateTime.parse("2024-02-08 00:00:00")),
          userActivationKey: null,
          userStatus: null,
          displayName: null,
        ),
        UserCreateManyInput(
          userLogin: PrismaUnion.$1("admin"),
          userPass: PrismaUnion.$1("admin"),
          userNicename: PrismaUnion.$1("Admin Test"),
          userEmail: PrismaUnion.$1("admin@musangten.com"),
          userUrl: PrismaUnion.$1(""),
          userRegistered: PrismaUnion.$1(DateTime.parse("2024-02-08 00:00:00")),
          userActivationKey: null,
          userStatus: null,
          displayName: null,
        ),
        UserCreateManyInput(
          userLogin: PrismaUnion.$1("kevin"),
          userPass: PrismaUnion.$1("kevin"),
          userNicename: PrismaUnion.$1("Kevin"),
          userEmail: PrismaUnion.$1("kevin@musangten.com"),
          userUrl: null,
          userRegistered: PrismaUnion.$1(DateTime.parse("2024-02-08 00:00:00")),
          userActivationKey: null,
          userStatus: null,
          displayName: null,
        ),
        UserCreateManyInput(
          userLogin: PrismaUnion.$1("syamil"),
          userPass: PrismaUnion.$1("syamil"),
          userNicename: PrismaUnion.$1("Syamil"),
          userEmail: PrismaUnion.$1("syamil@musangten.com"),
          userUrl: null,
          userRegistered: PrismaUnion.$1(DateTime.parse("2024-02-08 00:00:00")),
          userActivationKey: null,
          userStatus: null,
          displayName: null,
        ),
        UserCreateManyInput(
          userLogin: PrismaUnion.$1("superadmin"),
          userPass: PrismaUnion.$1("superadmin"),
          userNicename: PrismaUnion.$1("Super Admin"),
          userEmail: PrismaUnion.$1("superadmin@musangten.com"),
          userUrl: null,
          userRegistered:
              PrismaUnion.$1(DateTime.parse("2024-02-08 12:03:02.049911")),
          userActivationKey: null,
          userStatus: null,
          displayName: null,
        ),
      ],
    ),
    skipDuplicates: true,
  );
  print({
    "count": affectedRows.count,
  });

  final users = await prisma.user.findMany();
}
