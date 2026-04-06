-- ============================================
-- Agregar columna "Uso" a la tabla Achiras
-- y actualizar todos los lotes según el color detectado en el SVG
-- ============================================
-- Ejecutar en: Supabase Dashboard → SQL Editor
-- ============================================

-- 1. Agregar columna "Uso" con validación
ALTER TABLE public."Achiras"
ADD COLUMN IF NOT EXISTS "Uso" text CHECK ("Uso" IN ('mixto', 'residencia', 'comercial', 'institucional', 'vendido'));

-- ============================================
-- 2. UPDATE: Asignar uso a cada lote
-- ============================================

-- Manzana 1
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M1_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M1_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L14';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L15';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L16';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L17';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L18';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L19';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L20';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L21';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L22';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L23';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L24';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L25';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M1_L26';

-- Manzana 2
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M2_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M2_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M2_L14';

-- Manzana 3
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M3_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M3_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M3_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M3_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M3_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M3_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M3_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M3_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M3_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M3_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M3_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M3_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M3_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M3_L14';

-- Manzana 4
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M4_L13';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L14';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L15';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L16';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M4_L17';

-- Manzana 5
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L1';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M5_L12';

-- Manzana 6
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L1';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M6_L12';

-- Manzana 7
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M7_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M7_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M7_L3';
UPDATE public."Achiras" SET "Uso" = 'vendido' WHERE "ID" = 'M7_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M7_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M7_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M7_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M7_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M7_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M7_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M7_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M7_L12';

-- Manzana 8
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M8_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M8_L3';

-- Manzana 9
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L8';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L9';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L10';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L11';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L12';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L13';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M9_L14';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L15';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L16';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L17';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L18';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L19';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L20';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M9_L21';

-- Manzana 10
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L1';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M10_L11';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L12';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L13';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L14';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L15';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L16';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L17';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M10_L18';

-- Manzana 11
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M11_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M11_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M11_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M11_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M11_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M11_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M11_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M11_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M11_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M11_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M11_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M11_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M11_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M11_L14';

-- Manzana 13
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L1';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M13_L8';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M13_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M13_L14';

-- Manzana 15
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M15_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M15_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M15_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M15_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M15_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M15_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M15_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M15_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M15_L9';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M15_L10';

-- Manzana 16
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L8';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L9';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M16_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L14';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L15';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L16';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L17';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M16_L18';

-- Manzana 17
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M17_L14';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L15';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L16';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L17';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M17_L18';

-- Manzana 18
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L1';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M18_L9';

-- Manzana 19
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L1';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M19_L12';

-- Manzana 20
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L8';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L9';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L10';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L11';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L12';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M20_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L14';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L15';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L16';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L17';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L18';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L19';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L20';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M20_L21';

-- Manzana 21
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M21_L8';

-- Manzana 22
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M22_L8';

-- Manzana 23
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L6';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L8';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L9';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L10';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L11';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L12';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L13';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M23_L14';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L15';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L16';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L17';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L18';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L19';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L20';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M23_L21';

-- Manzana 24
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L1';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M24_L2';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M24_L3';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M24_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M24_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M24_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M24_L7';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L8';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L9';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L10';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L11';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L12';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L13';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M24_L14';

-- Manzana 25 (comercial)
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M25_L1';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M25_L2';

-- Manzana 26 (comercial)
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L1';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L2';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L3';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L4';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L5';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L6';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L7';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M26_L8';

-- Manzana 28
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M28_L1';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M28_L2';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M28_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M28_L4';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M28_L5';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M28_L6';
UPDATE public."Achiras" SET "Uso" = 'comercial' WHERE "ID" = 'M28_L7';

-- Manzana 29
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M29_L3';
UPDATE public."Achiras" SET "Uso" = 'mixto' WHERE "ID" = 'M29_L4';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L5';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L6';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L7';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L8';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L9';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L10';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L11';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L12';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L13';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L14';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L15';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L16';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L17';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L18';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L19';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L20';
UPDATE public."Achiras" SET "Uso" = 'residencia' WHERE "ID" = 'M29_L21';

-- ============================================
-- 3. Verificación: contar por uso
-- ============================================
SELECT "Uso", COUNT(*) as cantidad
FROM public."Achiras"
GROUP BY "Uso"
ORDER BY cantidad DESC;

-- ============================================
-- 4. Verificación: lotes sin uso asignado
-- ============================================
SELECT "ID", "Manzana", "Lote"
FROM public."Achiras"
WHERE "Uso" IS NULL;
