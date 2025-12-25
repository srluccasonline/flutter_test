import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1024;
    final isTablet = MediaQuery.of(context).size.width >= 768 && !isDesktop;

    final features = [
      _Feature(
        icon: LucideIcons.map,
        title: "O Palco é Seu",
        desc:
            "Ilha Fortuna foi desenhada para o drama. Do Casino Dourado aos Jardins Suspensos, cada metro quadrado é uma armadilha cenográfica.",
      ),
      _Feature(
        icon: LucideIcons.hammer,
        title: "Scavenge & Craft",
        desc:
            "Achou uma arma militar? Use-a. Achou apenas Whiskey e um isqueiro? Crie um Molotov gourmet. Use o que a ilha te der.",
      ),
      _Feature(
        icon: LucideIcons.brain,
        title: "Estratégia > Reflexos",
        desc:
            "Point-and-Click tático. A vitória não vai para quem clica mais rápido, mas para quem gerencia melhor o inventário e as rotas.",
      ),
      _Feature(
        icon: LucideIcons.smartphone,
        title: "Cross-Play Total",
        desc:
            "Comece no Desktop (Windows/Linux/Mac) e continue no Mobile. Sua conta e progresso viajam com você.",
      ),
      _Feature(
        icon: LucideIcons.code,
        title: "Open Source",
        desc:
            "Código auditável pela comunidade. Transparência total na bilheteria do show.",
      ),
      _Feature(
        icon: LucideIcons.crosshair,
        title: "Zero Pay-to-Win",
        desc:
            "O dinheiro compra o ingresso dos VIPs, mas não compra a sua vitória. Sem anúncios, imersão total.",
      ),
    ];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 96, horizontal: 24),
      child: Column(
        children: [
          // Header
          Center(
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      letterSpacing: -1,
                    ),
                    children: [
                      const TextSpan(text: 'MECÂNICAS DO '),
                      TextSpan(
                        text: 'SHOW',
                        style: TextStyle(
                          color: const Color(0xFF991B1B), // DeepRed 600
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Sobreviver não é suficiente. Você precisa entreter.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 64),

          // Grid
          LayoutBuilder(
            builder: (context, constraints) {
              // Using Wrap or Column/Row for better control than GridView inside SingleChildScrollView
              return Wrap(
                spacing: 32,
                runSpacing: 32,
                alignment: WrapAlignment.center,
                children: features.map((feature) {
                  return SizedBox(
                    width: isDesktop
                        ? (constraints.maxWidth - 64) / 3
                        : (isTablet
                              ? (constraints.maxWidth - 32) / 2
                              : constraints.maxWidth),
                    child: _FeatureCard(feature: feature),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Feature {
  final IconData icon;
  final String title;
  final String desc;

  _Feature({required this.icon, required this.title, required this.desc});
}

class _FeatureCard extends StatefulWidget {
  final _Feature feature;

  const _FeatureCard({required this.feature});

  @override
  State<_FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<_FeatureCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(0, _isHovered ? -4 : 0, 0),
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ]
              : [],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Decorative Corner
            Positioned(
              top: -32,
              right: -32,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: _isHovered
                      ? Colors.amber.shade400
                      : Colors.amber.shade100,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(64),
                  ),
                ),
                transform: Matrix4.identity()
                  ..scale(_isHovered ? 1.5 : 1.0, _isHovered ? 1.5 : 1.0, 1.0),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(widget.feature.icon, size: 40, color: Colors.black),
                const SizedBox(height: 24),
                Text(
                  widget.feature.title.toUpperCase(),
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade900,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  widget.feature.desc,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
