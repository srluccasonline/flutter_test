import React from 'react';
import Navbar from './components/Navbar';
import Hero from './components/Hero';
import Story from './components/Story';
import Features from './components/Features';
import DownloadSection from './components/DownloadSection';
import Footer from './components/Footer';

const App: React.FC = () => {
  return (
    <div className="min-h-screen font-sans bg-white selection:bg-gold-200 selection:text-black">
      <div className="bg-grid fixed inset-0 z-0 pointer-events-none opacity-40"></div>
      <Navbar />
      <main className="relative z-10 flex flex-col">
        <Hero />
        <Story />
        <Features />
        <DownloadSection />
      </main>
      <Footer />
    </div>
  );
};

export default App;