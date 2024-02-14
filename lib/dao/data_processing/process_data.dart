import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';

List<ATGModel> sortData(List<ATGModel> data) {
  data.sort((a, b) {
    int compare = 0;
    if (a.levelBarrel != null && b.levelBarrel != null) {
      compare = a.levelBarrel!.compareTo(b.levelBarrel!);
    }
    if (compare != 0) {
      // If levelBarrel is not the same, sort by levelBarrel
      return compare;
    } else {
      // If levelBarrel is the same, sort by volumeChangeBarrel
      if (a.volumeChangeBarrel != null && b.volumeChangeBarrel != null) {
        return a.volumeChangeBarrel!.compareTo(b.volumeChangeBarrel!);
      }
    }
    return 0;
  });
  return data;
}
