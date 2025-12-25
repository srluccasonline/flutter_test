import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'dart:ui';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool _isMobileMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 768;

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.9),
              border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 0,
                  ),
                  child: SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Logo
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
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

                        // Desktop Menu
                        if (isDesktop)
                          Row(
                            children: [
                              _NavLink(title: 'O Show', onTap: () {}),
                              _NavLink(title: 'Gameplay', onTap: () {}),
                              _NavLink(title: 'Plataformas', onTap: () {}),
                              _NavLink(title: 'Comunidade', onTap: () {}),
                              const SizedBox(width: 24),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  LucideIcons.download,
                                  size: 16,
                                ),
                                label: const Text('BAIXAR'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  textStyle: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 18,
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.zero, // Clip button style
                                  ),
                                ),
                              ),
                            ],
                          )
                        else
                          // Mobile Menu Button
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _isMobileMenuOpen = !_isMobileMenuOpen;
                              });
                            },
                            icon: Icon(
                              _isMobileMenuOpen
                                  ? LucideIcons.x
                                  : LucideIcons.menu,
                              size: 28,
                              color: Colors.grey.shade800,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

                // Mobile Menu Dropdown
                if (!isDesktop && _isMobileMenuOpen)
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade100),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: [
                        _MobileNavLink(title: 'O Show', onTap: () {}),
                        _MobileNavLink(title: 'Gameplay', onTap: () {}),
                        _MobileNavLink(title: 'Plataformas', onTap: () {}),
                        _MobileNavLink(title: 'Comunidade', onTap: () {}),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _NavLink({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: onTap,
        child: Text(
          title.toUpperCase(),
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}

class _MobileNavLink extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _MobileNavLink({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
