
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/repos/auth_repo/auth_repo.dart';

import '../../core/controllers/atg_controller.dart';
import '../../core/controllers/flowmeter_controller.dart';
import '../../core/screens/dashboard/dashboard.dart';

class OTPController extends GetxController{
  late final ATGBusinessLogic atgLogic;
  late final FlowMeterBusinessLogic flowmeterLogic;
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthRepo.instance.verifyOTP(otp);
    isVerified ? Get.offAll(DashBoard(
      atgLogic: atgLogic,
      flowmeterLogic: flowmeterLogic,
    )) : Get.back();
  }
}