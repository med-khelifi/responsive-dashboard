import 'package:dashboard/core/constants/app_images.dart';
import 'package:dashboard/models/drawer_item_model.dart';

List<DrawerItemModel> drawerListItems = [
  DrawerItemModel(label: "Dashboard", imagePath: AppAssets.imagesDashboard),
  DrawerItemModel(
    label: "My Transactions",
    imagePath: AppAssets.imagesMyTransactions,
  ),
  DrawerItemModel(label: "Statistic", imagePath: AppAssets.imagesStatistics),
  DrawerItemModel(
    label: "Wallet Account",
    imagePath: AppAssets.imagesWalletAccount,
  ),
  DrawerItemModel(
    label: "My Investments",
    imagePath: AppAssets.imagesMyInvestments,
  ),
];
