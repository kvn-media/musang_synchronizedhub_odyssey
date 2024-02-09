import 'dart:async';

import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/flowmeter_model.dart';

class FlowMeterBusinessLogic {
  late List<FlowmeterModel> list;
  late Timer timer;

  FlowMeterBusinessLogic() {
    list = FlowmeterModel.list;
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      updateData();
    });
  }

  void updateData() {}
}
