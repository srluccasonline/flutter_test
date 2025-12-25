import React from 'react';
import { Wine, Tv, ShieldAlert } from 'lucide-react';

const Story: React.FC = () => {
  return (
    <section id="sobre" className="py-20 bg-black text-white relative overflow-hidden clip-diagonal">
        {/* Background Grids for dark theme */}
        <div className="absolute inset-0 bg-[linear-gradient(rgba(255,255,255,0.03)_1px,transparent_1px),linear-gradient(90deg,rgba(255,255,255,0.03)_1px,transparent_1px)] bg-[size:40px_40px]"></div>

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div className="text-center mb-16">
          <span className="text-gold-500 font-bold tracking-widest uppercase text-sm">O Cenário</span>
          <h2 className="text-4xl md:text-5xl font-black mt-2 mb-6 uppercase tracking-tight">
            Coliseu de <span className="text-transparent bg-clip-text bg-gradient-to-r from-gold-400 to-white">Luxo</span>
          </h2>
          <div className="w-24 h-1 bg-deepred-600 mx-auto"></div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
            <div className="space-y-6 text-gray-300 text-lg leading-relaxed">
                <p>
                    <strong className="text-white">Ilha da Fortuna</strong> não é apenas uma ilha; é o coliseu mais exclusivo do mundo. 
                    Você não foi apenas "convidado". Você foi selecionado para ser a estrela principal do entretenimento noturno de uma plateia exigente.
                </p>
                <p>
                    Ao redor da costa, uma armada de super-iates ancora para assistir ao show ao vivo. 
                    O champanhe está gelado, as apostas estão na mesa, e o drone de filmagem está focado em você.
                </p>
                <p className="border-l-4 border-gold-500 pl-4 italic text-white font-serif">
                    "10 participantes, um palco paradisíaco e uma regra de ouro: dê um show ou saia de cena."
                </p>
            </div>

            <div className="grid grid-cols-1 gap-6">
                <div className="bg-gray-900/50 p-6 border border-gray-800 hover:border-gold-500/50 transition-colors">
                    <Wine className="text-deepred-500 w-8 h-8 mb-4" />
                    <h3 className="text-xl font-bold text-white mb-2">A Plateia VIP</h3>
                    <p className="text-sm text-gray-400">Magnatas assistem dos iates. Sua performance influencia as apostas deles.</p>
                </div>
                <div className="bg-gray-900/50 p-6 border border-gray-800 hover:border-gold-500/50 transition-colors">
                    <Tv className="text-gold-500 w-8 h-8 mb-4" />
                    <h3 className="text-xl font-bold text-white mb-2">Transmissão Global</h3>
                    <p className="text-sm text-gray-400">Tudo é televisionado. A morte é apenas parte da audiência.</p>
                </div>
                <div className="bg-gray-900/50 p-6 border border-gray-800 hover:border-gold-500/50 transition-colors">
                    <ShieldAlert className="text-white w-8 h-8 mb-4" />
                    <h3 className="text-xl font-bold text-white mb-2">Controle do Diretor</h3>
                    <p className="text-sm text-gray-400">Setores são fechados artificialmente para forçar o confronto final.</p>
                </div>
            </div>
        </div>
      </div>
    </section>
  );
};

export default Story;