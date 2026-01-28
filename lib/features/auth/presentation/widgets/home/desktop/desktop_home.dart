import 'package:flutter/material.dart';
import 'desktop_sidebar.dart';
import 'desktop_header.dart';
import 'desktop_rooms_section.dart';
import 'desktop_frequently_used.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Row(
        children: [
          /// SIDEBAR
          const DesktopSidebar(currentRoute: '/'),

          /// MAIN
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DesktopHeader(),
                  SizedBox(height: 32),

                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// LEFT: Rooms
                        Expanded(
                          flex: 3,
                          child: DesktopRoomsSection(),
                        ),

                        SizedBox(width: 24),

                        /// RIGHT: Frequently used
                        Expanded(
                          flex: 2,
                          child: FrequentlyUsedSection(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
