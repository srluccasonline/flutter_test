import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1024;

    return Container(
      padding: EdgeInsets.only(
        top: isDesktop ? 192 : 128, // pt-48 or pt-32
        bottom: 0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Abstract Background Elements
          Positioned(
            top: 0,
            right: 0,
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height,
            child: Transform(
              transform: Matrix4.skewX(-0.2), // skew-x-12 approx
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.grey.shade50,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 40,
            child: Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.amber.shade500, width: 4),
              ),
              child: Opacity(opacity: 0.2),
            ),
          ),

          // Main Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Flex(
              direction: isDesktop ? Axis.horizontal : Axis.vertical,
              crossAxisAlignment: isDesktop
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text Content
                Expanded(
                  flex: isDesktop ? 3 : 0,
                  child: Column(
                    crossAxisAlignment: isDesktop
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      // Badge
                      Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black.withValues(alpha: 0.1),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              LucideIcons.star,
                              size: 16,
                              color: Colors.amber.shade500,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'BATTLE ROYALE DE LUXO',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Title
                      RichText(
                        textAlign: isDesktop
                            ? TextAlign.left
                            : TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.montserrat(
                            fontSize: isDesktop
                                ? 96
                                : 48, // text-8xl or text-6xl
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            height: 1.0,
                            letterSpacing: -2,
                          ),
                          children: [
                            const TextSpan(text: 'GILDED '),
                            TextSpan(
                              text: 'GRAVES',
                              style: TextStyle(
                                foreground: Paint()
                                  ..shader =
                                      LinearGradient(
                                        colors: [
                                          Colors.amber.shade500,
                                          Colors.amber.shade700,
                                        ],
                                      ).createShader(
                                        const Rect.fromLTWH(0, 0, 200, 70),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Subtitle
                      Text(
                        '"Bem-vindo à Ilha da Fortuna. O palco é seu."',
                        textAlign: isDesktop
                            ? TextAlign.left
                            : TextAlign.center,
                        style: GoogleFonts.playfairDisplay(
                          fontSize: isDesktop ? 30 : 24,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Description
                      SizedBox(
                        width: 600,
                        child: Text(
                          'Você foi selecionado para ser a estrela principal. Um Survival Battle Royale 2D de alto luxo onde magnatas assistem ao seu desempenho. Dê um show ou saia de cena.',
                          textAlign: isDesktop
                              ? TextAlign.left
                              : TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: Colors.grey.shade600,
                            height: 1.6,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Buttons
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        alignment: WrapAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(
                                0xFF991B1B,
                              ), // DeepRed 600
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 24,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              elevation: 8,
                            ),
                            child: Text(
                              'ENTRAR NO PALCO',
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(LucideIcons.play, size: 20),
                            label: const Text('VER TRAILER'),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.black,
                              side: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 24,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              textStyle: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: isDesktop ? 128 : 64),
                    ],
                  ),
                ),

                // Character Image
                if (isDesktop)
                  Expanded(
                    flex: 2,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // Glow
                        Container(
                          width: 400,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade400.withValues(alpha: 0.2),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.shade400.withValues(
                                  alpha: 0.2,
                                ),
                                blurRadius: 100,
                                spreadRadius: 50,
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          'https://i.ibb.co/XZcq8CNk/woman-banner.png',
                          fit: BoxFit.contain,
                          height: 750,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const SizedBox(
                              height: 400,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error),
                        ),
                      ],
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(top: 64),
                    child: Image.network(
                      'https://i.ibb.co/XZcq8CNk/woman-banner.png',
                      height: 500,
                      fit: BoxFit.contain,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
