import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';

/// card widget with child content and decoration
class CardWidget extends StatelessWidget {
  /// card widget with child content and decoration
  const CardWidget({
    required this.child,
    super.key,
  });

  /// child to view inside card
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).extension<AppColors>()?.backSecondary,
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      shadowColor: const Color(0xFF000000).withOpacity(0.12),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: child,
        ),
      ),
    );
    // return DecoratedBox(
    //   decoration: BoxDecoration(
    //     color: Theme.of(context).extension<AppColors>()?.backSecondary,
    //     borderRadius: BorderRadius.circular(8),
    //     boxShadow: <BoxShadow>[
    //       BoxShadow(
    //         color: const Color(0xFF000000).withOpacity(12),
    //         blurRadius: 2,
    //         offset: const Offset(0, 2),
    //       ),
    //       // BoxShadow(
    //       //   color: const Color(0xFF000000).withOpacity(6),
    //       //   blurRadius: 2,
    //       //   offset: const Offset(0, 2),
    //       // ),
    //     ],
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(
    //       vertical: 8,
    //     ),
    //     child: child,
    //   ),
    // );
  }
}
