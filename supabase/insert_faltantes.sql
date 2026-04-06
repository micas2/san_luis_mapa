-- ============================================================
-- INSERT de 73 lotes faltantes en san_luis
-- Proyecto: SAN LUIS CHICO
-- Los campos Superficie, Precio, Orientacion, Precio_financiado, Cuota
-- quedan en NULL para que los completes luego.
-- ============================================================

INSERT INTO public.san_luis
  ("Proyecto", "ID", "Lote", "Manzana", "Superficie", "Estado", "Precio", "Orientacion", "Precio_financiado", "Cuota", "Uso")
VALUES
  ('SAN LUIS CHICO', 'M4_L6', '6', '4', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M5_L7', '7', '5', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M17_L10', '10', '17', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M17_L11', '11', '17', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M17_L12', '12', '17', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M17_L15', '15', '17', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M17_L16', '16', '17', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M17_L17', '17', '17', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M19_L2', '2', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L3', '3', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L4', '4', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L5', '5', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L6', '6', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L7', '7', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L8', '8', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L11', '11', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M19_L12', '12', '19', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L6', '6', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M20_L7', '7', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M20_L8', '8', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M20_L9', '9', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M20_L11', '11', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M20_L12', '12', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M20_L13', '13', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M20_L14', '14', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L15', '15', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L16', '16', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L17', '17', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L18', '18', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L19', '19', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L20', '20', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M20_L21', '21', '20', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M22_L2', '2', '22', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M22_L3', '3', '22', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M22_L4', '4', '22', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M22_L5', '5', '22', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M22_L6', '6', '22', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M22_L7', '7', '22', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M22_L8', '8', '22', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L1', '1', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M23_L2', '2', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L4', '4', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L5', '5', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L6', '6', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L7', '7', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L9', '9', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L10', '10', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L11', '11', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L12', '12', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L13', '13', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L14', '14', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M23_L15', '15', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M23_L16', '16', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M23_L17', '17', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M23_L18', '18', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M23_L19', '19', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M23_L20', '20', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M23_L21', '21', '23', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M24_L5', '5', '24', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M24_L6', '6', '24', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'residencia'),
  ('SAN LUIS CHICO', 'M24_L9', '9', '24', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M24_L10', '10', '24', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M24_L11', '11', '24', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M24_L12', '12', '24', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M24_L13', '13', '24', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M25_L2', '2', '25', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'comercial'),
  ('SAN LUIS CHICO', 'M26_L5', '5', '26', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'comercial'),
  ('SAN LUIS CHICO', 'M26_L6', '6', '26', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'comercial'),
  ('SAN LUIS CHICO', 'M26_L7', '7', '26', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'comercial'),
  ('SAN LUIS CHICO', 'M26_L8', '8', '26', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'comercial'),
  ('SAN LUIS CHICO', 'M28_L1', '1', '28', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M28_L2', '2', '28', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto'),
  ('SAN LUIS CHICO', 'M28_L3', '3', '28', NULL, 'DISPONIBLE', NULL, NULL, NULL, NULL, 'mixto')
ON CONFLICT ("ID") DO NOTHING;

-- Verificar cu├íntos se insertaron:
SELECT COUNT(*) FROM public.san_luis;



--- SQL guardado ---
