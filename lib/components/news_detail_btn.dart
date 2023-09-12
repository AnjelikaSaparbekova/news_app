import 'package:flutter/material.dart';
import 'package:news_app/theme/app_colors.dart';

class NewsDetailButton extends StatelessWidget {
  const NewsDetailButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appBar,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      onPressed: onPressed,
      child: const Text(
        'READ MORE',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
