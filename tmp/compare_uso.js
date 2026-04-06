// ===================================================================
// ANÁLISIS: CSV (mapa SVG) vs Supabase - diferencias en campo "Uso"
// ===================================================================

// CSV lotes_uso.csv (fuente de verdad del mapa)
const csvData = {
  "M1_L1":"mixto","M1_L2":"mixto","M1_L3":"residencia","M1_L4":"residencia","M1_L6":"residencia","M1_L7":"residencia","M1_L8":"residencia","M1_L9":"residencia","M1_L10":"residencia","M1_L11":"residencia","M1_L12":"residencia","M1_L13":"residencia","M1_L14":"residencia","M1_L15":"residencia","M1_L16":"residencia","M1_L17":"residencia","M1_L18":"residencia","M1_L19":"residencia","M1_L20":"residencia","M1_L21":"residencia","M1_L22":"residencia","M1_L23":"residencia","M1_L24":"residencia","M1_L25":"residencia","M1_L26":"residencia",
  "M2_L1":"mixto","M2_L2":"mixto","M2_L3":"residencia","M2_L4":"residencia","M2_L5":"residencia","M2_L6":"residencia","M2_L7":"residencia","M2_L8":"residencia","M2_L9":"residencia","M2_L10":"residencia","M2_L11":"residencia","M2_L12":"residencia","M2_L13":"residencia","M2_L14":"residencia",
  "M3_L1":"mixto","M3_L2":"mixto","M3_L3":"mixto","M3_L4":"mixto","M3_L5":"mixto","M3_L6":"mixto","M3_L7":"mixto","M3_L8":"residencia","M3_L9":"residencia","M3_L10":"residencia","M3_L11":"residencia","M3_L12":"residencia","M3_L13":"residencia","M3_L14":"residencia",
  "M4_L1":"mixto","M4_L2":"mixto","M4_L3":"mixto","M4_L4":"mixto","M4_L5":"mixto","M4_L6":"residencia","M4_L7":"residencia","M4_L8":"residencia","M4_L9":"residencia","M4_L10":"residencia","M4_L11":"residencia","M4_L12":"residencia","M4_L13":"residencia","M4_L14":"mixto","M4_L15":"mixto","M4_L16":"mixto","M4_L17":"mixto",
  "M5_L1":"residencia","M5_L2":"residencia","M5_L3":"residencia","M5_L4":"residencia","M5_L5":"residencia","M5_L6":"residencia","M5_L7":"residencia","M5_L8":"residencia","M5_L9":"residencia","M5_L10":"residencia","M5_L11":"residencia","M5_L12":"residencia",
  "M6_L1":"residencia","M6_L2":"residencia","M6_L3":"residencia","M6_L4":"residencia","M6_L5":"residencia","M6_L6":"residencia","M6_L7":"residencia","M6_L8":"residencia","M6_L9":"residencia","M6_L10":"residencia","M6_L11":"residencia","M6_L12":"residencia",
  "M7_L1":"mixto","M7_L2":"mixto","M7_L3":"mixto","M7_L4":"vendido","M7_L5":"mixto","M7_L6":"residencia","M7_L7":"residencia","M7_L8":"residencia","M7_L9":"residencia","M7_L10":"residencia","M7_L11":"residencia","M7_L12":"residencia",
  "M8_L2":"mixto","M8_L3":"mixto",
  "M9_L1":"residencia","M9_L2":"mixto","M9_L3":"mixto","M9_L4":"mixto","M9_L5":"mixto","M9_L6":"mixto","M9_L7":"mixto","M9_L8":"mixto","M9_L9":"mixto","M9_L10":"mixto","M9_L11":"mixto","M9_L12":"mixto","M9_L13":"mixto","M9_L14":"mixto","M9_L15":"residencia","M9_L16":"residencia","M9_L17":"residencia","M9_L18":"residencia","M9_L19":"residencia","M9_L20":"residencia","M9_L21":"residencia",
  "M10_L1":"mixto","M10_L2":"residencia","M10_L3":"residencia","M10_L4":"residencia","M10_L5":"residencia","M10_L6":"residencia","M10_L7":"residencia","M10_L8":"residencia","M10_L9":"residencia","M10_L10":"residencia","M10_L11":"residencia","M10_L12":"mixto","M10_L13":"mixto","M10_L14":"mixto","M10_L15":"mixto","M10_L16":"mixto","M10_L17":"mixto","M10_L18":"mixto",
  "M11_L1":"residencia","M11_L2":"mixto","M11_L3":"mixto","M11_L4":"mixto","M11_L5":"mixto","M11_L6":"mixto","M11_L7":"mixto","M11_L8":"mixto","M11_L9":"residencia","M11_L10":"residencia","M11_L11":"residencia","M11_L12":"residencia","M11_L13":"residencia","M11_L14":"residencia",
  "M13_L1":"residencia","M13_L2":"residencia","M13_L3":"residencia","M13_L4":"residencia","M13_L5":"residencia","M13_L6":"residencia","M13_L7":"residencia","M13_L8":"mixto","M13_L9":"mixto","M13_L10":"residencia","M13_L11":"residencia","M13_L12":"residencia","M13_L13":"residencia","M13_L14":"residencia",
  "M15_L1":"mixto","M15_L2":"mixto","M15_L3":"residencia","M15_L4":"residencia","M15_L5":"residencia","M15_L6":"residencia","M15_L7":"residencia","M15_L8":"residencia","M15_L9":"residencia","M15_L10":"mixto",
  "M16_L1":"mixto","M16_L2":"mixto","M16_L3":"mixto","M16_L4":"mixto","M16_L5":"mixto","M16_L6":"mixto","M16_L7":"mixto","M16_L8":"mixto","M16_L9":"mixto","M16_L10":"mixto","M16_L11":"residencia","M16_L12":"residencia","M16_L13":"residencia","M16_L14":"residencia","M16_L15":"residencia","M16_L16":"residencia","M16_L17":"residencia","M16_L18":"residencia",
  "M17_L1":"mixto","M17_L2":"mixto","M17_L3":"mixto","M17_L4":"mixto","M17_L5":"mixto","M17_L6":"mixto","M17_L7":"residencia","M17_L8":"residencia","M17_L9":"residencia","M17_L10":"residencia","M17_L11":"residencia","M17_L12":"residencia","M17_L13":"residencia","M17_L14":"residencia","M17_L15":"mixto","M17_L16":"mixto","M17_L17":"mixto","M17_L18":"mixto",
  "M18_L1":"residencia","M18_L2":"residencia","M18_L3":"residencia","M18_L4":"residencia","M18_L5":"residencia","M18_L6":"residencia","M18_L7":"residencia","M18_L8":"residencia","M18_L9":"residencia",
  "M19_L1":"residencia","M19_L2":"residencia","M19_L3":"residencia","M19_L4":"residencia","M19_L5":"residencia","M19_L6":"residencia","M19_L7":"residencia","M19_L8":"residencia","M19_L9":"residencia","M19_L10":"residencia","M19_L11":"residencia","M19_L12":"residencia",
  "M20_L1":"mixto","M20_L2":"mixto","M20_L3":"mixto","M20_L4":"mixto","M20_L5":"mixto","M20_L6":"mixto","M20_L7":"mixto","M20_L8":"mixto","M20_L9":"mixto","M20_L10":"mixto","M20_L11":"mixto","M20_L12":"mixto","M20_L13":"mixto","M20_L14":"residencia","M20_L15":"residencia","M20_L16":"residencia","M20_L17":"residencia","M20_L18":"residencia","M20_L19":"residencia","M20_L20":"residencia","M20_L21":"residencia",
  "M21_L1":"mixto","M21_L2":"mixto","M21_L3":"mixto","M21_L4":"mixto","M21_L5":"mixto","M21_L6":"mixto","M21_L7":"mixto","M21_L8":"mixto",
  "M22_L1":"mixto","M22_L2":"mixto","M22_L3":"mixto","M22_L4":"mixto","M22_L5":"mixto","M22_L6":"mixto","M22_L7":"mixto","M22_L8":"mixto",
  "M23_L1":"residencia","M23_L2":"mixto","M23_L3":"mixto","M23_L4":"mixto","M23_L5":"mixto","M23_L6":"mixto","M23_L7":"mixto","M23_L8":"mixto","M23_L9":"mixto","M23_L10":"mixto","M23_L11":"mixto","M23_L12":"mixto","M23_L13":"mixto","M23_L14":"mixto","M23_L15":"residencia","M23_L16":"residencia","M23_L17":"residencia","M23_L18":"residencia","M23_L19":"residencia","M23_L20":"residencia","M23_L21":"residencia",
  "M24_L1":"mixto","M24_L2":"residencia","M24_L3":"residencia","M24_L4":"residencia","M24_L5":"residencia","M24_L6":"residencia","M24_L7":"residencia","M24_L8":"mixto","M24_L9":"mixto","M24_L10":"mixto","M24_L11":"mixto","M24_L12":"mixto","M24_L13":"mixto","M24_L14":"mixto",
  "M25_L1":"comercial","M25_L2":"comercial",
  "M26_L1":"comercial","M26_L2":"comercial","M26_L3":"comercial","M26_L4":"comercial","M26_L5":"comercial","M26_L6":"comercial","M26_L7":"comercial","M26_L8":"comercial",
  "M28_L1":"mixto","M28_L2":"mixto","M28_L3":"mixto","M28_L4":"mixto","M28_L5":"mixto","M28_L6":"mixto","M28_L7":"comercial",
  "M29_L3":"mixto","M29_L4":"mixto","M29_L5":"residencia","M29_L6":"residencia","M29_L7":"residencia","M29_L8":"residencia","M29_L9":"residencia","M29_L10":"residencia","M29_L11":"residencia","M29_L12":"residencia","M29_L13":"residencia","M29_L14":"residencia","M29_L15":"residencia","M29_L16":"residencia","M29_L17":"residencia","M29_L18":"residencia","M29_L19":"residencia","M29_L20":"residencia","M29_L21":"residencia"
};

// Supabase san_luis (ID -> Uso actual)
const dbData = {
  "M1_L1":"mixto","M1_L2":"mixto","M1_L3":"residencia","M1_L4":"residencia","M1_L5":"residencia","M1_L6":"residencia","M1_L7":"residencia","M1_L8":"residencia","M1_L9":"residencia","M1_L10":"residencia","M1_L11":"residencia","M1_L12":"residencia","M1_L13":"residencia","M1_L14":"residencia","M1_L15":"residencia","M1_L16":"residencia","M1_L17":"residencia","M1_L18":"residencia","M1_L19":"residencia","M1_L20":"residencia","M1_L21":"residencia","M1_L22":"residencia","M1_L23":"residencia","M1_L24":"residencia","M1_L25":"residencia","M1_L26":"residencia",
  "M2_L1":"mixto","M2_L2":"mixto","M2_L3":"residencia","M2_L4":"residencia","M2_L5":"residencia","M2_L6":"residencia","M2_L7":"residencia","M2_L8":"residencia","M2_L9":"residencia","M2_L10":"residencia","M2_L11":"residencia","M2_L12":"residencia","M2_L13":"residencia","M2_L14":"residencia",
  "M3_L1":"mixto","M3_L2":"mixto","M3_L3":"mixto","M3_L4":"mixto","M3_L5":"mixto","M3_L6":"mixto","M3_L7":"mixto","M3_L8":"residencia","M3_L9":"residencia","M3_L10":"residencia","M3_L11":"residencia","M3_L12":"residencia","M3_L13":"residencia","M3_L14":"residencia",
  "M4_L1":"mixto","M4_L2":"mixto","M4_L3":"mixto","M4_L4":"mixto","M4_L5":"mixto","M4_L7":"residencia","M4_L8":"residencia","M4_L9":"residencia","M4_L10":"residencia","M4_L11":"residencia","M4_L12":"residencia","M4_L13":"residencia","M4_L14":"mixto","M4_L15":"mixto","M4_L16":"mixto","M4_L17":"mixto",
  "M5_L1":"residencia","M5_L2":"residencia","M5_L3":"residencia","M5_L4":"residencia","M5_L5":"residencia","M5_L6":"residencia","M5_L8":"residencia","M5_L9":"residencia","M5_L10":"residencia","M5_L11":"residencia","M5_L12":"residencia",
  "M6_L1":"residencia","M6_L2":"residencia","M6_L3":"residencia","M6_L4":"residencia","M6_L5":"residencia","M6_L6":"residencia","M6_L7":"residencia","M6_L8":"residencia","M6_L9":"residencia","M6_L10":"residencia","M6_L11":"residencia","M6_L12":"residencia",
  "M7_L1":"mixto","M7_L2":"mixto","M7_L3":"mixto","M7_L4":"vendido","M7_L5":"mixto","M7_L6":"residencia","M7_L7":"residencia","M7_L8":"residencia","M7_L9":"residencia","M7_L10":"residencia","M7_L11":"residencia","M7_L12":"residencia",
  "M8_L1":"mixto","M8_L2":"mixto","M8_L3":"mixto","M8_L4":"mixto","M8_L5":"mixto","M8_L6":"mixto","M8_L7":"mixto","M8_L8":"mixto",
  "M9_L1":"residencia","M9_L2":"mixto","M9_L3":"mixto","M9_L4":"mixto","M9_L5":"mixto","M9_L6":"mixto","M9_L7":"mixto","M9_L8":"mixto","M9_L9":"mixto","M9_L10":"mixto","M9_L11":"mixto","M9_L12":"mixto","M9_L13":"mixto","M9_L14":"mixto","M9_L15":"residencia","M9_L16":"residencia","M9_L17":"residencia","M9_L18":"residencia","M9_L19":"residencia","M9_L20":"residencia","M9_L21":"residencia",
  "M10_L1":"mixto","M10_L2":"residencia","M10_L3":"residencia","M10_L4":"residencia","M10_L5":"residencia","M10_L6":"residencia","M10_L7":"residencia","M10_L8":"residencia","M10_L9":"residencia","M10_L10":"residencia","M10_L11":"residencia","M10_L12":"mixto","M10_L13":"mixto","M10_L14":"mixto","M10_L15":"mixto","M10_L16":"mixto","M10_L17":"mixto","M10_L18":"mixto",
  "M11_L1":"residencia","M11_L2":"mixto","M11_L3":"mixto","M11_L4":"mixto","M11_L5":"mixto","M11_L6":"mixto","M11_L7":"mixto","M11_L8":"mixto","M11_L9":"residencia","M11_L10":"residencia","M11_L11":"residencia","M11_L12":"residencia","M11_L13":"residencia","M11_L14":"residencia",
  "M12_L1":"mixto","M12_L2":"mixto","M12_L3":"residencia","M12_L4":"residencia","M12_L5":"residencia","M12_L6":"residencia","M12_L7":"residencia","M12_L8":"mixto","M12_L9":"mixto","M12_L10":"mixto","M12_L11":"mixto","M12_L12":"mixto","M12_L13":"residencia","M12_L14":"residencia",
  "M13_L1":"residencia","M13_L2":"residencia","M13_L3":"residencia","M13_L4":"residencia","M13_L5":"residencia","M13_L6":"residencia","M13_L7":"residencia","M13_L8":"mixto","M13_L9":"mixto","M13_L10":"residencia","M13_L11":"residencia","M13_L12":"residencia","M13_L13":"residencia","M13_L14":"residencia",
  "M14_L1":"mixto","M14_L2":"mixto","M14_L3":"mixto","M14_L4":"residencia","M14_L5":"residencia","M14_L6":"residencia","M14_L7":"residencia","M14_L8":"mixto","M14_L9":"mixto","M14_L10":"mixto","M14_L11":"mixto","M14_L12":"mixto","M14_L13":"residencia","M14_L14":"residencia","M14_L15":"residencia","M14_L16":"residencia",
  "M15_L1":"mixto","M15_L2":"mixto","M15_L3":"residencia","M15_L4":"residencia","M15_L5":"residencia","M15_L6":"residencia","M15_L7":"residencia","M15_L8":"residencia","M15_L9":"residencia","M15_L10":"mixto",
  "M16_L1":"mixto","M16_L2":"mixto","M16_L3":"mixto","M16_L4":"mixto","M16_L5":"mixto","M16_L6":"mixto","M16_L7":"mixto","M16_L8":"mixto","M16_L9":"mixto","M16_L10":"mixto","M16_L11":"residencia","M16_L12":"residencia","M16_L13":"residencia","M16_L14":"residencia","M16_L15":"residencia","M16_L16":"residencia","M16_L17":"residencia","M16_L18":"residencia",
  "M17_L1":"mixto","M17_L2":"mixto","M17_L3":"mixto","M17_L4":"mixto","M17_L5":"mixto","M17_L6":"mixto","M17_L7":"residencia","M17_L8":"residencia","M17_L9":"residencia","M17_L13":"residencia","M17_L14":"residencia","M17_L18":"mixto",
  "M18_L1":"residencia","M18_L2":"residencia","M18_L3":"residencia","M18_L4":"residencia","M18_L5":"residencia","M18_L6":"residencia","M18_L7":"residencia","M18_L8":"residencia","M18_L9":"residencia",
  "M19_L1":"residencia","M19_L9":"residencia","M19_L10":"residencia","M19_L18":"residencia",
  "M20_L1":"mixto","M20_L2":"mixto","M20_L3":"mixto","M20_L4":"mixto","M20_L5":"mixto","M20_L10":"mixto",
  "M21_L1":"mixto","M21_L2":"mixto","M21_L3":"mixto","M21_L4":"mixto","M21_L5":"mixto","M21_L6":"mixto","M21_L7":"mixto","M21_L8":"mixto",
  "M22_L1":"mixto",
  "M23_L3":"mixto","M23_L8":"mixto",
  "M24_L1":"mixto","M24_L2":"residencia","M24_L3":"residencia","M24_L4":"residencia","M24_L7":"residencia","M24_L8":"mixto","M24_L14":"mixto",
  "M25_L1":"comercial",
  "M26_L1":"comercial","M26_L2":"comercial","M26_L3":"comercial","M26_L4":"comercial",
  "M27_L1":"comercial",
  "M28_L4":"mixto","M28_L5":"mixto","M28_L6":"mixto","M28_L7":"comercial",
  "M29_L1":"mixto","M29_L2":"mixto","M29_L3":"mixto","M29_L4":"mixto","M29_L5":"residencia","M29_L6":"residencia","M29_L7":"residencia","M29_L8":"residencia","M29_L9":"residencia","M29_L10":"residencia","M29_L11":"residencia","M29_L12":"residencia","M29_L13":"residencia","M29_L14":"residencia","M29_L15":"residencia","M29_L16":"residencia","M29_L17":"residencia","M29_L18":"residencia","M29_L19":"residencia","M29_L20":"residencia","M29_L21":"residencia","M29_L22":"mixto","M29_L23":"mixto","M29_L24":"mixto","M29_L25":"mixto"
};

// ===================================================================
// Comparar: para cada ID que existe en AMBOS, ver si el Uso coincide
// ===================================================================
const diffs = [];
for (const [id, csvUso] of Object.entries(csvData)) {
  if (dbData[id] !== undefined) {
    const dbUso = dbData[id];
    if (csvUso.toLowerCase() !== dbUso.toLowerCase()) {
      diffs.push({ id, csvUso, dbUso });
    }
  }
}

console.log(`\n${'='.repeat(60)}`);
console.log(`DIFERENCIAS EN USO: CSV (mapa) vs Supabase`);
console.log(`${'='.repeat(60)}`);
console.log(`Total diferencias encontradas: ${diffs.length}\n`);

if (diffs.length === 0) {
  console.log('✅ Todos los lotes tienen el mismo Uso en ambas fuentes.');
} else {
  console.log('ID              | CSV (mapa)    | Supabase      ');
  console.log('-'.repeat(50));
  for (const d of diffs) {
    console.log(`${d.id.padEnd(15)} | ${d.csvUso.padEnd(13)} | ${d.dbUso}`);
  }

  // Generar SQL UPDATE para corregir
  console.log(`\n${'='.repeat(60)}`);
  console.log(`SQL para corregir en Supabase:`);
  console.log(`${'='.repeat(60)}\n`);
  for (const d of diffs) {
    console.log(`UPDATE public.san_luis SET "Uso" = '${d.csvUso}' WHERE "ID" = '${d.id}';`);
  }
}
