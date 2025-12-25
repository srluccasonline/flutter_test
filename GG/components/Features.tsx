import React from 'react';
import { Crosshair, Map, Brain, Smartphone, Code, Hammer } from 'lucide-react';

const Features: React.FC = () => {
  const features = [
    {
      icon: Map,
      title: "O Palco é Seu",
      desc: "Ilha Fortuna foi desenhada para o drama. Do Casino Dourado aos Jardins Suspensos, cada metro quadrado é uma armadilha cenográfica."
    },
    {
      icon: Hammer,
      title: "Scavenge & Craft",
      desc: "Achou uma arma militar? Use-a. Achou apenas Whiskey e um isqueiro? Crie um Molotov gourmet. Use o que a ilha te der."
    },
    {
      icon: Brain,
      title: "Estratégia > Reflexos",
      desc: "Point-and-Click tático. A vitória não vai para quem clica mais rápido, mas para quem gerencia melhor o inventário e as rotas."
    },
    {
      icon: Smartphone,
      title: "Cross-Play Total",
      desc: "Comece no Desktop (Windows/Linux/Mac) e continue no Mobile. Sua conta e progresso viajam com você."
    },
    {
      icon: Code,
      title: "Open Source",
      desc: "Código auditável pela comunidade. Transparência total na bilheteria do show."
    },
    {
      icon: Crosshair,
      title: "Zero Pay-to-Win",
      desc: "O dinheiro compra o ingresso dos VIPs, mas não compra a sua vitória. Sem anúncios, imersão total."
    }
  ];

  return (
    <section id="gameplay" className="py-24 bg-white relative">
      <div className="absolute right-0 top-0 h-full w-1/2 bg-gray-50/50 -skew-x-6 -z-0"></div>
      
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div className="text-center mb-16">
          <h2 className="text-4xl font-black text-black uppercase tracking-tighter mb-4">
            Mecânicas do <span className="text-deepred-600">Show</span>
          </h2>
          <p className="text-gray-600 max-w-2xl mx-auto">
            Sobreviver não é suficiente. Você precisa entreter.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {features.map((f, i) => (
            <div key={i} className="group bg-white border border-gray-200 p-8 hover:shadow-2xl transition-all duration-300 hover:-translate-y-1 relative overflow-hidden">
              <div className="absolute top-0 right-0 w-16 h-16 bg-gold-100 rounded-bl-full -mr-8 -mt-8 transition-all group-hover:bg-gold-400 group-hover:scale-150"></div>
              
              <f.icon className="w-10 h-10 text-black mb-6 relative z-10" />
              
              <h3 className="text-xl font-bold text-gray-900 mb-3 uppercase tracking-wide relative z-10">
                {f.title}
              </h3>
              <p className="text-gray-600 leading-relaxed text-sm relative z-10">
                {f.desc}
              </p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Features;