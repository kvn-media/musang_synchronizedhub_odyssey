import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';

// Access the ATGModel class.
class ATGSummary {
  int initialLevel = 0;
  int finalLevel = 0;
  int totalVolumeChange = 0;

  ATGSummary(List<ATGModel> atgData) {
    // Calculate initial and final levels, and total volume change.
    initialLevel = atgData.first.levelBarrel!;
    finalLevel = atgData.last.levelBarrel!;
    totalVolumeChange = finalLevel - initialLevel;
  }

  // Function to display the summary in a user-friendly format.
  void displaySummary() {
    print('**Summary Data for Level and Volume Change**');
    print('Initial Level (Barrels): $initialLevel');
    print('Final Level (Barrels): $finalLevel');
    print('Total Volume Change (Barrels): $totalVolumeChange');
  }
}
