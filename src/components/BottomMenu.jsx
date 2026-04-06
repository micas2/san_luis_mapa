import React from 'react';
import { useControls } from 'react-zoom-pan-pinch';
import { Plus, Minus } from 'lucide-react';
import Logo from './Logo';

export default function BottomMenu() {
  const { zoomIn, zoomOut } = useControls();

  return (
    <div className="bg-dark-grey shadow-[0_-10px_40px_rgba(0,0,0,0.3)] px-6 py-4 md:py-4 lg:py-6 flex flex-row items-center justify-between gap-3 sm:gap-4 md:gap-6 pointer-events-auto border-t border-white/5">
       
       {/* References - Figma styled layout */}
       <div className="flex flex-col items-end gap-1.5 md:gap-2">
          {/* Title */}
          <div className="flex flex-col w-full text-right items-end">
             <span className="text-white font-open-sans-cond font-bold text-[16px] md:text-[20px] lg:text-[22px] leading-none whitespace-nowrap">Referencias</span>
             <div className="w-full h-[1px] bg-white/20 mt-1" />
          </div>

          {/* Items */}
          <div className="flex flex-row items-end gap-2 md:gap-4 mt-1.5">
             
             <div className="flex flex-col items-center gap-1 md:gap-1.5 min-w-[35px] md:min-w-[50px]">
                <div className="bg-white flex items-center justify-center rounded-[4px] md:rounded-[6px] w-[28px] h-[18px] md:w-[30px] md:h-[20px]">
                   <div className="w-[10px] h-[10px] md:w-[11px] md:h-[11px] rounded-full bg-[#B0B6D5]" />
                </div>
                <span className="text-[9px] md:text-[10px] lg:text-[12px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">RESIDENCIAL</span>
             </div>

             <div className="flex flex-col items-center gap-1 md:gap-1.5 min-w-[35px] md:min-w-[50px]">
                <div className="bg-white flex items-center justify-center rounded-[4px] md:rounded-[6px] w-[28px] h-[18px] md:w-[30px] md:h-[20px]">
                   <div className="w-[10px] h-[10px] md:w-[11px] md:h-[11px] rounded-full bg-[#C0B391]" />
                </div>
                <span className="text-[9px] md:text-[10px] lg:text-[12px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">MIXTO</span>
             </div>
             
             <div className="flex flex-col items-center gap-1 md:gap-1.5 min-w-[35px] md:min-w-[50px]">
                <div className="bg-white flex items-center justify-center rounded-[4px] md:rounded-[6px] w-[28px] h-[18px] md:w-[30px] md:h-[20px]">
                   <div className="w-[10px] h-[10px] md:w-[11px] md:h-[11px] rounded-full bg-[#9A8B7A]" />
                </div>
                <span className="text-[9px] md:text-[10px] lg:text-[12px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">COMERCIAL</span>
             </div>

             <div className="flex flex-col items-center gap-1 md:gap-1.5 min-w-[35px] md:min-w-[50px]">
                <div className="bg-white flex items-center justify-center rounded-[4px] md:rounded-[6px] w-[28px] h-[18px] md:w-[30px] md:h-[20px]">
                   <div className="w-[10px] h-[10px] md:w-[11px] md:h-[11px] rounded-full bg-[#888888]" />
                </div>
                <span className="text-[9px] md:text-[10px] lg:text-[12px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">VENDIDO</span>
             </div>

             <div className="flex flex-col items-center gap-1 md:gap-1.5 min-w-[35px] md:min-w-[50px]">
                <div className="bg-white flex items-center justify-center rounded-[4px] md:rounded-[6px] w-[28px] h-[18px] md:w-[30px] md:h-[20px]">
                   <div className="w-[10px] h-[10px] md:w-[11px] md:h-[11px] rounded-full bg-[#D3D3D3]" />
                </div>
                <span className="text-[9px] md:text-[10px] lg:text-[12px] font-bold text-white font-open-sans-cond tracking-widest leading-none whitespace-nowrap">NO DISP.</span>
             </div>

          </div>
       </div>

       {/* Zoom + Logo */}
       <div className="flex items-center gap-6 md:gap-14">
          {/* Zoom */}
          <div className="flex flex-col items-center justify-center gap-1.5">
            <div className="flex items-center justify-center gap-3">
              <button 
                onClick={() => zoomOut()} 
                aria-label="Alejar zoom" 
                className="flex items-center justify-center w-9 h-9 md:w-11 md:h-11 rounded-full border border-white/20 text-white/50 hover:text-white hover:border-white/40 transition-all cursor-pointer bg-white/5"
              >
                <Minus className="w-4 h-4 md:w-5 md:h-5" strokeWidth={3} />
              </button>
              <button 
                onClick={() => zoomIn()} 
                aria-label="Acercar zoom" 
                className="flex items-center justify-center w-9 h-9 md:w-11 md:h-11 rounded-full border border-white/20 text-white hover:border-white/40 transition-all cursor-pointer bg-white/10"
              >
                <Plus className="w-4 h-4 md:w-5 md:h-5" strokeWidth={3} />
              </button>
            </div>
            <span className="text-white text-[9px] md:text-[10px] font-bold tracking-[0.4em] leading-none font-open-sans-cond opacity-80 mt-1">ZOOM</span>
          </div>

          <div className="w-[1px] h-14 md:h-16 bg-white/10" />

          {/* Logo */}
          <div className="flex items-center justify-center brightness-0 invert opacity-90">
            <Logo width="w-14 md:w-14" />
          </div>
       </div>

    </div>
  );
}
