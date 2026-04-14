import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../config/app_config.dart';
import '../screens/splash_screen.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../providers/auth_provider.dart';

class AppRouter {
  static late GoRouter router;

  static void initialize(AuthProvider authProvider) {
    router = GoRouter(
      initialLocation: AppConfig.initialRoute,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        final isLoggedIn = authProvider.isAuthenticated;
        final isLoggingIn = state.matchedLocation == AppConfig.loginRoute;
        final isSplash = state.matchedLocation == AppConfig.initialRoute;

        if (isSplash) {
          return null;
        }

        if (!isLoggedIn && !isLoggingIn) {
          return AppConfig.loginRoute;
        }

        if (isLoggedIn && isLoggingIn) {
          return AppConfig.homeRoute;
        }

        return null;
      },
      routes: [
        GoRoute(
          path: AppConfig.initialRoute,
          name: 'splash',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: AppConfig.loginRoute,
          name: 'login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: AppConfig.homeRoute,
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '${AppConfig.profileRoute}/:id',
          name: 'profile',
          builder: (context, state) {
            final id = state.pathParameters['id'] ?? '';
            return ProfileScreen(id: id);
          },
        ),
        GoRoute(
          path: AppConfig.settingsRoute,
          name: 'settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
      errorBuilder: (context, state) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                'Page not found: ${state.matchedLocation}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => context.go(AppConfig.homeRoute),
                child: const Text('Go Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Placeholder screens for profile and settings
class ProfileScreen extends StatelessWidget {
  final String id;
  const ProfileScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(child: Text('Profile ID: $id')),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Page')),
    );
  }
}
