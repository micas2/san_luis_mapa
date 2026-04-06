import React from 'react';
import { useControls } from 'react-zoom-pan-pinch';
import { Plus, Minus } from 'lucide-react';
import Logo from './Logo';

export default function BottomMenu() {
  const { zoomIn, zoomOut } = useControls();

  return (
    <div className="bg-dark-grey shadow-[0_-10px_40px_rgba(0,0,0,0.3)] px-6 py-6 md:px-12 md:py-8 flex flex-row items-center justify-between gap-3 sm:gap-4 md:gap-6 pointer-events-auto border-t border-white/5">
       
       {/* References - Figma styled layout */}
       <div className="flex flex-col items-end gap-2 md:gap-3">
          {/* Title */}
          <div className="flex flex-col w-full text-right items-end">
             <span className="text-white font-open-sans-cond font-bold text-[18px] md:text-[24px] lg:text-[26px] leading-none whitespace-nowrap">Referencias</span>
             <div className="w-full h-[1px] bg-white/20 mt-1 md:mt-2" />
          </div>

          {/* Items */}
          <div className="flex flex-row items-end gap-3 md:gap-4 mt-2">
             
             <div className="flex flex-col items-center gap-1.5 lg:gap-2 min-w-[40px] md:min-w-[60px]">
                <div className="bg-white flex items-center justify-center rounded-[6px] md:rounded-[8px] w-[30px] h-[20px] md:w-[36px] md:h-[24px]">
                   <div className="w-[12px] h-[12px] md:w-[14px] md:h-[14px] rounded-full bg-[#B0B6D5]" />
                </div>
                <span className="text-[10px] md:text-[12px] lg:text-[14px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">RESIDENCIAL</span>
             </div>

             <div className="flex flex-col items-center gap-1.5 lg:gap-2 min-w-[40px] md:min-w-[60px]">
                <div className="bg-white flex items-center justify-center rounded-[6px] md:rounded-[8px] w-[30px] h-[20px] md:w-[36px] md:h-[24px]">
                   <div className="w-[12px] h-[12px] md:w-[14px] md:h-[14px] rounded-full bg-[#C0B391]" />
                </div>
                <span className="text-[10px] md:text-[12px] lg:text-[14px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">MIXTO</span>
             </div>
             
             <div className="flex flex-col items-center gap-1.5 lg:gap-2 min-w-[40px] md:min-w-[60px]">
                <div className="bg-white flex items-center justify-center rounded-[6px] md:rounded-[8px] w-[30px] h-[20px] md:w-[36px] md:h-[24px]">
                   <div className="w-[12px] h-[12px] md:w-[14px] md:h-[14px] rounded-full bg-[#9A8B7A]" />
                </div>
                <span className="text-[10px] md:text-[12px] lg:text-[14px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">COMERCIAL</span>
             </div>

             <div className="flex flex-col items-center gap-1.5 lg:gap-2 min-w-[40px] md:min-w-[60px]">
                <div className="bg-white flex items-center justify-center rounded-[6px] md:rounded-[8px] w-[30px] h-[20px] md:w-[36px] md:h-[24px]">
                   <div className="w-[12px] h-[12px] md:w-[14px] md:h-[14px] rounded-full bg-[#888888]" />
                </div>
                <span className="text-[10px] md:text-[12px] lg:text-[14px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">VENDIDO</span>
             </div>

             <div className="flex flex-col items-center gap-1.5 lg:gap-2 min-w-[40px] md:min-w-[60px]">
                <div className="bg-white flex items-center justify-center rounded-[6px] md:rounded-[8px] w-[30px] h-[20px] md:w-[36px] md:h-[24px]">
                   <div className="w-[12px] h-[12px] md:w-[14px] md:h-[14px] rounded-full bg-[#D3D3D3]" />
                </div>
                <span className="text-[10px] md:text-[12px] lg:text-[14px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">NO DISP.</span>
             </div>

          </div>
       </div>

       {/* Zoom + Logo */}
       <div className="flex items-center gap-6 md:gap-14">
          {/* Zoom */}
          <div className="flex flex-col items-center justify-center gap-2">
            <div className="flex items-center justify-center gap-4">
              <button 
                onClick={() => zoomOut()} 
                aria-label="Alejar zoom" 
                className="flex items-center justify-center w-10 h-10 md:w-14 md:h-14 rounded-full border border-white/20 text-white/50 hover:text-white hover:border-white/40 transition-all cursor-pointer bg-white/5"
              >
                <Minus className="w-5 h-5 md:w-6 md:h-6" strokeWidth={3} />
              </button>
              <button 
                onClick={() => zoomIn()} 
                aria-label="Acercar zoom" 
                className="flex items-center justify-center w-10 h-10 md:w-14 md:h-14 rounded-full border border-white/20 text-white hover:border-white/40 transition-all cursor-pointer bg-white/10"
              >
                <Plus className="w-5 h-5 md:w-6 md:h-6" strokeWidth={3} />
              </button>
            </div>
            <span className="text-white text-[10px] md:text-[12px] font-bold tracking-[0.4em] leading-none font-open-sans-cond opacity-80 mt-1">ZOOM</span>
          </div>

          <div className="w-[1px] h-14 md:h-20 bg-white/10" />

          {/* Logo */}
          <div className="flex items-center justify-center brightness-0 invert opacity-90">
            <Logo width="w-10 sm:w-12 md:w-16" />
          </div>
       </div>

    </div>
  );
}
