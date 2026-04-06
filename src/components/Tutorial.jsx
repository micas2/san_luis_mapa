import React from 'react';
import { useStore } from '../store/useStore';
import { Map } from 'lucide-react';
import Logo from './Logo';

export default function Tutorial() {
  const dismissTutorial = useStore(state => state.dismissTutorial);

  return (
    <div className="w-full h-screen flex flex-col overflow-x-hidden bg-[#191919] select-none">
      
      {/* Top Banner - Dark Grey */}
      <div className="bg-[#2f2f31] flex flex-col items-center justify-center py-12 md:py-16 px-4 shrink-0 shadow-lg z-10 gap-10 md:gap-14">
        <h2 className="text-white text-[28px] md:text-[34px] font-antonio leading-none tracking-wide text-center">Cómo usar el mapa?</h2>
        
        {/* Instructions */}
        <div className="flex flex-col md:flex-row gap-8 md:gap-16 items-start md:items-center justify-center max-w-[900px]">
          
          <div className="flex items-center gap-4">
            <div className="w-8 h-8 md:w-10 md:h-10 shrink-0 bg-[#e2d6be]" style={{ maskImage: "url('/tutorial_mover.svg')", WebkitMaskImage: "url('/tutorial_mover.svg')", maskSize: "contain", WebkitMaskSize: "contain", maskRepeat: "no-repeat", WebkitMaskRepeat: "no-repeat", maskPosition: "center", WebkitMaskPosition: "center" }} />
            <p className="font-open-sans-cond font-bold text-[16px] md:text-[18px] text-white">Arrastra para moverte por el mapa.</p>
          </div>

          <div className="flex items-center gap-4">
            <div className="w-8 h-8 md:w-10 md:h-10 shrink-0 bg-[#e2d6be]" style={{ maskImage: "url('/tutorial_clic.svg')", WebkitMaskImage: "url('/tutorial_clic.svg')", maskSize: "contain", WebkitMaskSize: "contain", maskRepeat: "no-repeat", WebkitMaskRepeat: "no-repeat", maskPosition: "center", WebkitMaskPosition: "center" }} />
            <p className="font-open-sans-cond font-bold text-[16px] md:text-[18px] text-white">Toca un lote para ver su información.</p>
          </div>

          <div className="flex items-center gap-4">
            <div className="w-8 h-8 md:w-10 md:h-10 shrink-0 bg-[#e2d6be]" style={{ maskImage: "url('/tutorial_iconos-2.svg')", WebkitMaskImage: "url('/tutorial_iconos-2.svg')", maskSize: "contain", WebkitMaskSize: "contain", maskRepeat: "no-repeat", WebkitMaskRepeat: "no-repeat", maskPosition: "center", WebkitMaskPosition: "center" }} />
            <p className="font-open-sans-cond font-bold text-[16px] md:text-[18px] text-white">Usa la lupa para acercar o alejar.</p>
          </div>

        </div>
      </div>

      {/* Middle Banner - Beige Arena */}
      <div className="bg-[#e2d6be] flex flex-col items-center justify-center py-12 md:py-16 px-4 shrink-0 shadow-inner z-0 gap-8 md:gap-12">
        <h2 className="text-[#2f2f31] text-[24px] md:text-[30px] font-antonio leading-none tracking-wide text-center">¡Estás listo para explorar!</h2>
        
        {/* Continue Button matching new palette */}
        <button 
          onClick={dismissTutorial}
          className="flex items-center gap-2 sm:gap-4 bg-[#2f2f31] hover:bg-[#191919] text-[#e2d6be] font-bold text-xs sm:text-sm md:text-lg py-4 md:py-5 px-8 md:px-12 rounded-full shadow-xl transition-all hover:scale-105 tracking-widest cursor-pointer mt-2"
        >
          <Map size={24} className="md:w-7 md:h-7" />
          VER EL MAPA
        </button>
      </div>

      {/* Bottom Area - Very Dark */}
      <div className="bg-[#191919] flex-1 flex flex-col items-center justify-center py-6 px-4 relative min-h-[160px] md:min-h-[180px]">
         <div className="brightness-0 invert opacity-90 mb-4">
           <Logo width="w-20 md:w-28 lg:w-32" />
         </div>
      </div>
      
      {/* Logo Proyecto Norte */}
      <img 
        src="/logo_proyecto_norte.svg" 
        alt="Proyecto Norte" 
        className="fixed bottom-0 right-0 w-32 md:w-44 z-50 pointer-events-none" 
      />
    </div>
  );
}
