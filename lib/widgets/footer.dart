import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 768;

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(top: 48, bottom: 48, left: 24, right: 24),
      child: Column(
        children: [
          // Top Section
          Flex(
            direction: isDesktop ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: isDesktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              // Brand
              Column(
                crossAxisAlignment: isDesktop
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        letterSpacing: -1,
                      ),
                      children: [
                        const TextSpan(text: 'GILDED '),
                        TextSpan(
                          text: 'GRAVES',
                          style: TextStyle(
                            color: Colors.amber.shade700, // Gold 600
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '© ${DateTime.now().year} Gilded Graves. Todos os direitos reservados.',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Open Source Project.',
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
              if (!isDesktop) const SizedBox(height: 32),

              // Social Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialIcon(
                    icon: LucideIcons.twitter,
                    hoverColor: Colors.amber.shade500,
                  ),
                  const SizedBox(width: 24),
                  _SocialIcon(
                    icon: LucideIcons.instagram,
                    hoverColor: const Color(0xFF991B1B),
                  ),
                  const SizedBox(width: 24),
                  _SocialIcon(
                    icon: LucideIcons.youtube,
                    hoverColor: Colors.white,
                  ),
                  const SizedBox(width: 24),
                  _SocialIcon(icon: LucideIcons.mail, hoverColor: Colors.white),
                ],
              ),
            ],
          ),
          const SizedBox(height: 48),

          // Bottom Section
          Container(
            padding: const EdgeInsets.only(top: 32),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey.shade900)),
            ),
            child: Flex(
              direction: isDesktop ? Axis.horizontal : Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Links
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _FooterLink(title: 'TERMOS DE SERVIÇO'),
                    const SizedBox(width: 16),
                    _FooterLink(title: 'PRIVACIDADE'),
                    const SizedBox(width: 16),
                    _FooterLink(title: 'FAIR PLAY POLICY'),
                  ],
                ),
                if (!isDesktop) const SizedBox(height: 16),

                // Credits
                Text(
                  'DESENVOLVIDO COM PAIXÃO',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
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

class _SocialIcon extends StatefulWidget {
  final IconData icon;
  final Color hoverColor;

  const _SocialIcon({required this.icon, required this.hoverColor});

  @override
  State<_SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<_SocialIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Icon(
        widget.icon,
        size: 24,
        color: _isHovered ? widget.hoverColor : Colors.grey.shade400,
      ),
    );
  }
}

class _FooterLink extends StatefulWidget {
  final String title;

  const _FooterLink({required this.title});

  @override
  State<_FooterLink> createState() => _FooterLinkState();
}

class _FooterLinkState extends State<_FooterLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.title,
        style: GoogleFonts.montserrat(
          fontSize: 12,
          color: _isHovered ? Colors.white : Colors.grey.shade600,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
