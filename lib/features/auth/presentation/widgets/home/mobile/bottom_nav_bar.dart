import 'package:flutter/material.dart';
import 'package:thuctap/core/constants/app_colors.dart';
import 'package:thuctap/core/constants/app_sizes.dart';


class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.paddingMedium,
        vertical: AppSizes.paddingSmall,
      ),
      decoration: BoxDecoration(
        color: AppColors.background,
        border: Border(
          top: BorderSide(
            color: AppColors.borderColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavBarItem(
            icon: Icons.home,
            isSelected: selectedIndex == 0,
            onTap: () => onItemSelected(0),
          ),
          _NavBarItem(
            icon: Icons.devices,
            isSelected: selectedIndex == 1,
            onTap: () => onItemSelected(1),
          ),
          _NavBarItem(
            icon: Icons.location_on,
            isSelected: selectedIndex == 2,
            onTap: () => onItemSelected(2),
          ),
          _NavBarItem(
            icon: Icons.bar_chart,
            isSelected: selectedIndex == 3,
            onTap: () => onItemSelected(3),
          ),
          _NavBarItem(
            icon: Icons.schedule,
            isSelected: selectedIndex == 4,
            onTap: () => onItemSelected(4),
          ),
          _NavBarItem(
            icon: Icons.settings,
            isSelected: selectedIndex == 5,
            onTap: () => onItemSelected(5),
          ),
        ],
      ),
    );
  }
}


class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavBarItem({
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSizes.paddingSmall),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : AppColors.textLight,
          size: AppSizes.iconLarge,
        ),
      ),
    );
  }
}
