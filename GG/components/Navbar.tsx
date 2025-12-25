import React from 'react';
import { Menu, X, Download } from 'lucide-react';

const Navbar: React.FC = () => {
  const [isOpen, setIsOpen] = React.useState(false);

  const navLinks = [
    { name: 'O Show', href: '#sobre' },
    { name: 'Gameplay', href: '#gameplay' },
    { name: 'Plataformas', href: '#download' },
    { name: 'Comunidade', href: '#footer' },
  ];

  return (
    <nav className="fixed top-0 w-full z-50 bg-white/90 backdrop-blur-md border-b border-gray-200">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-20">
          <div className="flex-shrink-0 flex items-center">
             <span className="font-serif font-black text-2xl tracking-tighter text-black uppercase">
               Gilded <span className="text-gold-600">Graves</span>
             </span>
          </div>
          
          <div className="hidden md:flex items-center space-x-8">
            {navLinks.map((link) => (
              <a
                key={link.name}
                href={link.href}
                className="text-gray-800 hover:text-deepred-600 font-bold uppercase tracking-wide text-sm transition-colors"
              >
                {link.name}
              </a>
            ))}
            <a
              href="#download"
              className="bg-black text-white px-6 py-2 font-bold uppercase text-sm tracking-wider hover:bg-gold-500 hover:text-black transition-all clip-button flex items-center gap-2"
            >
              <Download size={16} />
              Baixar
            </a>
          </div>

          <div className="md:hidden flex items-center">
            <button
              onClick={() => setIsOpen(!isOpen)}
              className="text-gray-800 hover:text-gold-600 focus:outline-none"
            >
              {isOpen ? <X size={28} /> : <Menu size={28} />}
            </button>
          </div>
        </div>
      </div>

      {/* Mobile Menu */}
      {isOpen && (
        <div className="md:hidden bg-white border-t border-gray-100 absolute w-full">
          <div className="px-2 pt-2 pb-3 space-y-1 sm:px-3">
            {navLinks.map((link) => (
              <a
                key={link.name}
                href={link.href}
                onClick={() => setIsOpen(false)}
                className="block px-3 py-4 text-center font-bold uppercase text-gray-800 hover:text-deepred-600 hover:bg-gray-50"
              >
                {link.name}
              </a>
            ))}
          </div>
        </div>
      )}
    </nav>
  );
};

export default Navbar;