import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';

List<ATGModel> sortData(List<ATGModel> data) {
  data.sort((a, b) {
    int compare = a.levelBarrel.compareTo(b.levelBarrel);
    if (compare != 0) {
      // Jika levelBarrel tidak sama, urutkan berdasarkan levelBarrel
      return compare;
    } else {
      // Jika levelBarrel sama, urutkan berdasarkan volumeChangeBarrel
      return a.volumeChangeBarrel.compareTo(b.volumeChangeBarrel);
    }
  });
  return data;
}
