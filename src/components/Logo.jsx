import React from 'react';

export default function Logo({ className = "", width = "w-16" }) {
  return (
    <div className={`flex flex-col items-center justify-center ${className}`}>
      <img src="/logo_sanluis.svg" alt="San Luis" className={`h-auto ${width}`} />
    </div>
  );
}
