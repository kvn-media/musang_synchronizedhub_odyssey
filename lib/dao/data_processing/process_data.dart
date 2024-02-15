import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';

List<ATGModel> sortData(List<ATGModel> data) {
  data.sort((a, b) {
    int compare = 0;
    if (a.level_barrel != null && b.level_barrel != null) {
      compare = a.level_barrel!.compareTo(b.level_barrel!);
    }
    if (compare != 0) {
      // If levelBarrel is not the same, sort by levelBarrel
      return compare;
    } else {
      // If levelBarrel is the same, sort by volumeChangeBarrel
      if (a.volume_change_barrel != null && b.volume_change_barrel != null) {
        return a.volume_change_barrel!.compareTo(b.volume_change_barrel!);
      }
    }
    return 0;
  });
  return data;
}
