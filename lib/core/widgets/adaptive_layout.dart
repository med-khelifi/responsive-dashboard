import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    this.mobileLayout,
    this.tabletLayout,
    this.desktopLayout,
  });
  final WidgetBuilder? mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout?.call(context) ?? SizedBox.shrink();
        } else if (constraints.maxWidth < 900) {
          return tabletLayout?.call(context) ?? SizedBox.shrink();
        } else {
          return desktopLayout?.call(context) ?? SizedBox.shrink();
        }
      },
    );
  }
}
