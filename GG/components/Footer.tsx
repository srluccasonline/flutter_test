import React from 'react';
import { Twitter, Instagram, Youtube, Mail } from 'lucide-react';

const Footer: React.FC = () => {
  return (
    <footer id="footer" className="bg-black text-white py-12 border-t border-gray-900">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex flex-col md:flex-row justify-between items-center">
          
          <div className="mb-8 md:mb-0 text-center md:text-left">
            <h3 className="text-2xl font-black uppercase tracking-tighter">
                Gilded <span className="text-gold-600">Graves</span>
            </h3>
            <p className="text-gray-500 text-sm mt-2">
                © {new Date().getFullYear()} Gilded Graves. Todos os direitos reservados.
            </p>
             <p className="text-gray-600 text-xs mt-1">
                Open Source Project.
            </p>
          </div>

          <div className="flex space-x-6">
            <a href="#" className="text-gray-400 hover:text-gold-500 transition-colors">
              <Twitter className="w-6 h-6" />
            </a>
            <a href="#" className="text-gray-400 hover:text-deepred-500 transition-colors">
              <Instagram className="w-6 h-6" />
            </a>
            <a href="#" className="text-gray-400 hover:text-white transition-colors">
              <Youtube className="w-6 h-6" />
            </a>
            <a href="#" className="text-gray-400 hover:text-white transition-colors">
              <Mail className="w-6 h-6" />
            </a>
          </div>
        </div>
        
        <div className="mt-12 pt-8 border-t border-gray-900 text-center md:text-left flex flex-col md:flex-row justify-between text-xs text-gray-600 uppercase tracking-widest">
            <div className="space-x-4">
                <a href="#" className="hover:text-white">Termos de Serviço</a>
                <a href="#" className="hover:text-white">Privacidade</a>
                <a href="#" className="hover:text-white">Fair Play Policy</a>
            </div>
            <div className="mt-4 md:mt-0">
                Desenvolvido com Paixão
            </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;