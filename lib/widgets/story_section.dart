import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 768;

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Column(
        children: [
          // Header
          Center(
            child: Column(
              children: [
                Text(
                  'O CENÁRIO',
                  style: GoogleFonts.montserrat(
                    color: Colors.amber.shade500,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      fontSize: isDesktop ? 48 : 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      height: 1.1,
                    ),
                    children: [
                      const TextSpan(text: 'COLISEU DE '),
                      TextSpan(
                        text: 'LUXO',
                        style: TextStyle(
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: [Colors.amber.shade400, Colors.white],
                            ).createShader(const Rect.fromLTWH(0, 0, 200, 50)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: 96,
                  height: 4,
                  color: const Color(0xFF7F1D1D), // DeepRed 600
                ),
              ],
            ),
          ),
          const SizedBox(height: 64),

          // Content Grid
          Flex(
            direction: isDesktop ? Axis.horizontal : Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text Column
              Expanded(
                flex: isDesktop ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildParagraph(
                      'Ilha da Fortuna não é apenas uma ilha; é o coliseu mais exclusivo do mundo. Você não foi apenas "convidado". Você foi selecionado para ser a estrela principal do entretenimento noturno de uma plateia exigente.',
                      isBold: true,
                    ),
                    const SizedBox(height: 24),
                    _buildParagraph(
                      'Ao redor da costa, uma armada de super-iates ancora para assistir ao show ao vivo. O champanhe está gelado, as apostas estão na mesa, e o drone de filmagem está focado em você.',
                    ),
                    const SizedBox(height: 32),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.amber.shade500,
                            width: 4,
                          ),
                        ),
                      ),
                      child: Text(
                        '"10 participantes, um palco paradisíaco e uma regra de ouro: dê um show ou saia de cena."',
                        style: GoogleFonts.playfairDisplay(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    if (!isDesktop) const SizedBox(height: 48),
                  ],
                ),
              ),
              if (isDesktop) const SizedBox(width: 48),

              // Cards Column
              Expanded(
                flex: isDesktop ? 1 : 0,
                child: Column(
                  children: [
                    _buildCard(
                      icon: LucideIcons.wine,
                      iconColor: const Color(0xFF991B1B), // DeepRed 500
                      title: 'A Plateia VIP',
                      description:
                          'Magnatas assistem dos iates. Sua performance influencia as apostas deles.',
                    ),
                    const SizedBox(height: 24),
                    _buildCard(
                      icon: LucideIcons.tv,
                      iconColor: Colors.amber.shade500,
                      title: 'Transmissão Global',
                      description:
                          'Tudo é televisionado. A morte é apenas parte da audiência.',
                    ),
                    const SizedBox(height: 24),
                    _buildCard(
                      icon: LucideIcons.shieldAlert,
                      iconColor: Colors.white,
                      title: 'Controle do Diretor',
                      description:
                          'Setores são fechados artificialmente para forçar o confronto final.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String text, {bool isBold = false}) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.montserrat(
          fontSize: 18,
          color: Colors.grey.shade300,
          height: 1.6,
        ),
        children: [
          if (isBold)
            TextSpan(
              text: 'Ilha da Fortuna',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          TextSpan(text: isBold ? text.substring(15) : text),
        ],
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey.shade900.withValues(alpha: 0.5),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 32),
          const SizedBox(height: 16),
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
