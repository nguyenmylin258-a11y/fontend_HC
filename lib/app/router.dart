import 'package:go_router/go_router.dart';

import '../features/auth/presentation/pages/sign_in_page.dart';
import '../features/auth/presentation/pages/sign_up_page.dart';
import '../features/auth/presentation/pages/home_page.dart';
import '../features/auth/presentation/pages/mobile_shell_page.dart';
import '../features/auth/presentation/widgets/devices/mobile_devices_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/sign-in', // ✅ quay về login đầu tiên
  routes: [
    /// 🔐 AUTH (KHÔNG bottom bar)
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignUpPage(),
    ),

    /// 📱 APP (CÓ bottom bar)
    ShellRoute(
      builder: (context, state, child) {
        return MobileShellPage(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/devices',
          builder: (context, state) => const MobileDevicesPage(),
        ),
        // thêm route khác ở đây
      ],
    ),
  ],
);
