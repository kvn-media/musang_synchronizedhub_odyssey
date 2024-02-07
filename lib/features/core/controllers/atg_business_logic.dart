// import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atgSummary_model.dart';
// import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class ATGBusinessLogic {
//   List<ATGModel> listData = ATGModel.list;

//   late List<StackedBarSeries<ATGModel, String>> detailedChartData;
//   final List<StackedBarSeries<ATGSummary, String>> summaryChartData = [];

//   void initializeChartData() {
//     try {
//       ATGSummary summary = ATGSummary(listData);
//       summaryChartData.add(
//         StackedBarSeries(
//           dataSource: [summary],
//           xValueMapper: (ATGSummary data, _) => "Summary",
//           yValueMapper: (ATGSummary data, _) => data.finalLevel,
//           name: "Final Level",
//         ),
//       );
//     } catch (error) {
//       //_showErrorDialog(error);
//     }

//     updateChartData();
//   }

//   void updateChartData() {
//     detailedChartData = [
//       StackedBarSeries<ATGModel, String>(
//         dataSource: listData,
//         xValueMapper: (ATGModel data, _) => data.timestamp,
//         yValueMapper: (ATGModel data, _) =>
//             data.levelBarrel != null ? data.levelBarrel! : 0,
//         name: "Level Barrel",
//       ),
//       StackedBarSeries<ATGModel, String>(
//         dataSource: listData,
//         xValueMapper: (ATGModel data, _) => data.timestamp,
//         yValueMapper: (ATGModel data, _) =>
//             data.volumeChangeBarrel != null ? data.volumeChangeBarrel! : 0,
//         name: "Volume Change Barrel",
//       ),
//       StackedBarSeries<ATGModel, String>(
//         dataSource: listData,
//         xValueMapper: (ATGModel data, _) => data.timestamp,
//         yValueMapper: (ATGModel data, _) =>
//             data.avgTempCelcius != null ? data.avgTempCelcius! : 0,
//         name: "Average Temperature",
//       ),
//       StackedBarSeries<ATGModel, String>(
//         dataSource: listData,
//         xValueMapper: (ATGModel data, _) => data.timestamp,
//         yValueMapper: (ATGModel data, _) =>
//             data.waterLevelMeter != null ? data.waterLevelMeter! : 0,
//         name: "Water Level Meter",
//       ),
//       StackedBarSeries<ATGModel, String>(
//         dataSource: listData,
//         xValueMapper: (ATGModel data, _) => data.timestamp,
//         yValueMapper: (ATGModel data, _) =>
//             data.productTempCelcius != null ? data.productTempCelcius! : 0,
//         name: "Product Temperature",
//       ),
//     ];
//   }

//   void updateData() {
//     updateChartData();
//   }
// }
