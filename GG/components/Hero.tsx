import React from 'react';
import { Play, Star } from 'lucide-react';

const Hero: React.FC = () => {
  return (
    <section className="relative pt-32 lg:pt-48 lg:pb-0 overflow-hidden">
      {/* Abstract Background Elements */}
      <div className="absolute top-0 right-0 w-1/3 h-full bg-gray-50 skew-x-12 transform origin-top-right -z-10 border-l border-gray-200"></div>
      <div className="absolute top-20 left-10 w-24 h-24 border-4 border-gold-500 rounded-full opacity-20 -z-10"></div>
      <div className="absolute bottom-10 right-1/4 w-64 h-64 border border-gray-300 transform rotate-45 -z-10"></div>

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative h-full">
        <div className="flex flex-col lg:flex-row items-center lg:items-end justify-between">
          
          {/* Text Content - Added bottom padding to separate from edge since section padding was removed */}
          <div className="w-full lg:w-3/5 z-10 text-center lg:text-left pb-16 lg:pb-32">
            <div className="inline-flex items-center gap-2 px-4 py-1 border border-black/10 rounded-full bg-white mb-6">
              <Star className="w-4 h-4 text-gold-500 fill-current" />
              <span className="text-xs font-bold uppercase tracking-widest text-gray-600">
                Battle Royale de Luxo
              </span>
            </div>

            <h1 className="text-6xl sm:text-7xl lg:text-8xl font-black text-black leading-none tracking-tighter mb-4 whitespace-nowrap">
              GILDED <span className="text-transparent bg-clip-text bg-gradient-to-r from-gold-500 to-gold-700">GRAVES</span>
            </h1>

            <h2 className="text-2xl sm:text-3xl font-serif italic text-gray-700 mb-8 max-w-2xl mx-auto lg:mx-0">
              "Bem-vindo à Ilha da Fortuna. O palco é seu."
            </h2>

            <p className="text-lg text-gray-600 mb-10 max-w-xl mx-auto lg:mx-0 leading-relaxed">
              Você foi selecionado para ser a estrela principal. 
              Um Survival Battle Royale 2D de alto luxo onde magnatas assistem ao seu desempenho. 
              Dê um show ou saia de cena.
            </p>

            <div className="flex flex-col sm:flex-row items-center justify-center lg:justify-start gap-4">
              <a 
                href="#download"
                className="w-full sm:w-auto px-8 py-4 bg-deepred-600 hover:bg-deepred-500 text-white font-black uppercase tracking-wider text-lg shadow-lg hover:shadow-xl transition-all clip-button text-center"
              >
                Entrar no Palco
              </a>
              <a 
                href="#sobre"
                className="w-full sm:w-auto px-8 py-4 bg-white border-2 border-black hover:bg-black hover:text-white text-black font-bold uppercase tracking-wider text-lg transition-all clip-button flex items-center justify-center gap-2 group"
              >
                <Play className="w-5 h-5 group-hover:fill-white" />
                Ver Trailer
              </a>
            </div>
          </div>

          {/* Character Image - No Mask, Anchored Bottom */}
          <div className="w-full lg:w-2/5 mt-16 lg:mt-0 relative flex justify-center lg:justify-end">
            <div className="relative z-10 group translate-y-1"> {/* Translate-y-1 ensures no pixel gap at bottom */}
                {/* Glow behind */}
                <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[120%] h-[120%] bg-gold-400 blur-3xl opacity-20 rounded-full"></div>
                
                {/* Image without Fade Mask */}
                <img 
                    src="https://i.ibb.co/XZcq8CNk/woman-banner.png" 
                    alt="Gilded Graves Character" 
                    className="relative max-h-[500px] lg:max-h-[750px] object-contain drop-shadow-2xl transition-transform duration-500 hover:scale-[1.01]"
                />
                
                {/* Decorative geometrical elements - Corners */}
                <div className="absolute bottom-10 -right-4 w-16 h-16 border-r-2 border-b-2 border-gold-500 opacity-60"></div>
                <div className="absolute top-10 -left-4 w-16 h-16 border-l-2 border-t-2 border-gold-500 opacity-60"></div>
                
                {/* Floating Element */}
                <div className="absolute top-1/3 -left-8 bg-white/90 backdrop-blur border border-gray-200 px-4 py-2 shadow-lg transform -rotate-3 hidden lg:block">
                   <div className="flex items-center gap-2">
                       <div className="w-2 h-2 bg-red-600 rounded-full animate-pulse"></div>
                       <span className="font-bold text-black text-xs tracking-widest uppercase">Ao Vivo</span>
                   </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Hero;