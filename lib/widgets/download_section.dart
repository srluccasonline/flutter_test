import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DownloadSection extends StatelessWidget {
  const DownloadSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1024;
    final isTablet = MediaQuery.of(context).size.width >= 768 && !isDesktop;

    return Container(
      color: Colors.grey.shade100,
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
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      letterSpacing: -1,
                    ),
                    children: [
                      const TextSpan(text: 'GARANTA SEU '),
                      TextSpan(
                        text: 'INGRESSO',
                        style: TextStyle(
                          color: Colors.amber.shade700, // Gold 600
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'O show acontece onde você estiver. Escolha sua plataforma e entre na arena agora mesmo.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),

          // Buttons Grid
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  _DownloadButton(
                    icon: LucideIcons.monitor,
                    title: 'Windows',
                    subtitle: 'x64 Installer',
                    width: isDesktop
                        ? (constraints.maxWidth - 48) / 4
                        : (isTablet
                              ? (constraints.maxWidth - 16) / 2
                              : constraints.maxWidth),
                  ),
                  _DownloadButton(
                    icon: LucideIcons.command,
                    title: 'macOS',
                    subtitle: 'Apple Silicon / Intel',
                    width: isDesktop
                        ? (constraints.maxWidth - 48) / 4
                        : (isTablet
                              ? (constraints.maxWidth - 16) / 2
                              : constraints.maxWidth),
                  ),
                  _DownloadButton(
                    icon: LucideIcons.smartphone,
                    title: 'Android',
                    subtitle: 'Play Store / APK',
                    hoverColor: Colors.green.shade600,
                    width: isDesktop
                        ? (constraints.maxWidth - 48) / 4
                        : (isTablet
                              ? (constraints.maxWidth - 16) / 2
                              : constraints.maxWidth),
                  ),
                  _DownloadButton(
                    icon: LucideIcons.apple,
                    title: 'iOS',
                    subtitle: 'App Store',
                    width: isDesktop
                        ? (constraints.maxWidth - 48) / 4
                        : (isTablet
                              ? (constraints.maxWidth - 16) / 2
                              : constraints.maxWidth),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 48),

          // Linux Link
          Column(
            children: [
              Text(
                'TAMBÉM DISPONÍVEL PARA LINUX',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(LucideIcons.github, size: 20),
                label: const Text('ACESSAR REPOSITÓRIO (SOURCE CODE)'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade900,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: const StadiumBorder(),
                  textStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DownloadButton extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? hoverColor;
  final double width;

  const _DownloadButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.hoverColor,
    required this.width,
  });

  @override
  State<_DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<_DownloadButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: widget.width,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: _isHovered ? Colors.black : Colors.grey.shade200,
            width: 2,
          ),
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
        child: Column(
          children: [
            Icon(
              widget.icon,
              size: 40,
              color: _isHovered
                  ? (widget.hoverColor ?? Colors.black)
                  : Colors.grey.shade400,
            ),
            const SizedBox(height: 12),
            Text(
              widget.title,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.subtitle,
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
