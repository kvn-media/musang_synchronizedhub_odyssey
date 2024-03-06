import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atgSummary_model.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';

List<ATGModel> sortAtgData(List<ATGModel> data) {
  data.sort((a, b) {
    int compare = 0;
    compare = a.tank_level.compareTo(b.tank_level);
      if (compare != 0) {
      // If levelBarrel is not the same, sort by levelBarrel
      return compare;
    } else {
      // If levelBarrel is the same, sort by volumeChangeBarrel
      return a.volume_change.compareTo(b.volume_change);
        }
    return 0;
  });
  return data;
}

List<ATGSummaryModel> sortAtgSummaryData(List<ATGSummaryModel> data) {
  data.sort((a, b) {
    int compare = 0;
    if (a.from_date != null && b.from_date != null) {
      compare = a.from_date!.compareTo(b.from_date!);
    }
    if (compare != 0) {
      // If from_date is not the same, sort by from_date
      return compare;
    } else {
      // If from_date is the same, sort by change
      if (a.change != null && b.change != null) {
        return a.change!.compareTo(b.change!);
      }
    }
    return 0;
  });
  return data;
}
