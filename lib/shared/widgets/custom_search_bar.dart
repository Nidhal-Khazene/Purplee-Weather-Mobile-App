import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_text_styles.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  const CustomSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color:
            AppColors.weatherSolidNavy, // Or another dark color matching the UI
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            offset: const Offset(0, 4),
            blurRadius: 4,
            blurStyle: BlurStyle.inner,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onTap: onTap,
        style: AppTextStyles.regular17(context).copyWith(color: AppColors.darkPrimary),
        decoration: InputDecoration(
          hintText: 'Search for a city or airport',
          hintStyle: AppTextStyles.regular17(context).copyWith(
            color: AppColors.darkSecondary,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 6.0),
            child: Icon(
              Icons.search_rounded,
              color: AppColors.darkSecondary,
              size: 22,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 40,
            minHeight: 36,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 8,
          ),
          isDense: true,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
