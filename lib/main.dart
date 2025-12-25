import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/navbar.dart';
import 'widgets/hero_section.dart';
import 'widgets/story_section.dart';
import 'widgets/features_section.dart';
import 'widgets/download_section.dart';
import 'widgets/footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gilded Graves',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFEAB308), // Gold 500
          brightness: Brightness.light,
          primary: const Color(0xFFEAB308),
          secondary: const Color(0xFF991B1B), // DeepRed 500
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)
            .copyWith(
              displayLarge: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.bold,
              ),
              displayMedium: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.bold,
              ),
              displaySmall: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background Grid
          Positioned.fill(
            child: Opacity(
              opacity: 0.4,
              child: CustomPaint(painter: GridPainter()),
            ),
          ),
          const SingleChildScrollView(
            child: Column(
              children: [
                HeroSection(),
                StorySection(),
                FeaturesSection(),
                DownloadSection(),
                Footer(),
              ],
            ),
          ),
          const Navbar(),
        ],
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black.withValues(alpha: 0.05)
      ..strokeWidth = 1;

    const gridSize = 40.0;

    for (double x = 0; x < size.width; x += gridSize) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    for (double y = 0; y < size.height; y += gridSize) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
