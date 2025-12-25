import React from 'react';
import { Monitor, Smartphone, Apple, Command, Github } from 'lucide-react';

const DownloadSection: React.FC = () => {
  return (
    <section id="download" className="py-24 bg-gray-100 relative">
        <div className="absolute inset-0 bg-grid opacity-30"></div>
        
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 text-center">
            <h2 className="text-5xl font-black text-black uppercase tracking-tighter mb-8">
                Garanta seu <span className="text-gold-600">Ingresso</span>
            </h2>
            <p className="text-xl text-gray-600 mb-12 max-w-2xl mx-auto">
                O show acontece onde você estiver. Escolha sua plataforma e entre na arena agora mesmo.
            </p>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-12">
                {/* Desktop Buttons */}
                <button className="flex flex-col items-center justify-center p-6 bg-white border-2 border-gray-200 hover:border-black hover:shadow-xl transition-all group rounded-none">
                    <Monitor className="w-10 h-10 text-gray-400 group-hover:text-black mb-3 transition-colors" />
                    <span className="font-bold text-lg">Windows</span>
                    <span className="text-xs text-gray-500 mt-1">x64 Installer</span>
                </button>
                
                <button className="flex flex-col items-center justify-center p-6 bg-white border-2 border-gray-200 hover:border-black hover:shadow-xl transition-all group rounded-none">
                    <Command className="w-10 h-10 text-gray-400 group-hover:text-black mb-3 transition-colors" />
                    <span className="font-bold text-lg">macOS</span>
                    <span className="text-xs text-gray-500 mt-1">Apple Silicon / Intel</span>
                </button>
                
                <button className="flex flex-col items-center justify-center p-6 bg-white border-2 border-gray-200 hover:border-black hover:shadow-xl transition-all group rounded-none">
                    <Smartphone className="w-10 h-10 text-gray-400 group-hover:text-green-600 mb-3 transition-colors" />
                    <span className="font-bold text-lg">Android</span>
                    <span className="text-xs text-gray-500 mt-1">Play Store / APK</span>
                </button>

                <button className="flex flex-col items-center justify-center p-6 bg-white border-2 border-gray-200 hover:border-black hover:shadow-xl transition-all group rounded-none">
                    <Apple className="w-10 h-10 text-gray-400 group-hover:text-black mb-3 transition-colors" />
                    <span className="font-bold text-lg">iOS</span>
                    <span className="text-xs text-gray-500 mt-1">App Store</span>
                </button>
            </div>

            <div className="flex flex-col items-center">
                 <p className="text-gray-500 mb-4 text-sm font-semibold uppercase tracking-wider">Também disponível para Linux</p>
                 <a 
                    href="#" 
                    className="inline-flex items-center gap-2 px-8 py-3 bg-gray-900 text-white font-bold hover:bg-gray-800 transition-colors rounded-full"
                 >
                    <Github className="w-5 h-5" />
                    Acessar Repositório (Source Code)
                 </a>
            </div>
        </div>
    </section>
  );
};

export default DownloadSection;