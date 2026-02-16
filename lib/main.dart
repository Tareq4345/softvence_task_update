import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Import your screens
// import 'screens/onboarding_screen.dart';
// import 'screens/location_welcome_screen.dart';
// import 'screens/alarm_home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF0A0A2E),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Alarm App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C3FF5),
          brightness: Brightness.dark,
        ),
        fontFamily: 'Inter', // Add your preferred font
      ),
      // Set your initial route
      // home: const OnboardingScreen(),
      home: const AlarmHomeScreen(), // For testing
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        '/location': (context) => const LocationWelcomeScreen(),
        '/home': (context) => const AlarmHomeScreen(),
      },
    );
  }
}

// Placeholder widgets - replace with actual imports
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Onboarding Screen')),
    );
  }
}

class LocationWelcomeScreen extends StatelessWidget {
  const LocationWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Location Welcome Screen')),
    );
  }
}

class AlarmHomeScreen extends StatelessWidget {
  const AlarmHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Alarm Home Screen')),
    );
  }
}
