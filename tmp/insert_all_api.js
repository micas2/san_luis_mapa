const key = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5eG1wYnZnemV3eGhpdG5pdm54Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ0OTE2MTQsImV4cCI6MjA5MDA2NzYxNH0.vWgEzubR4UT-BVvBidTkQM-9M41li2j01qNIOcWfgSs';
const url = 'https://kyxmpbvgzewxhitnivnx.supabase.co/rest/v1/san_luis';

const missing = [
  ["M4_L6",   "4",  "6",  "residencia"],
  ["M5_L7",   "5",  "7",  "residencia"],
  ["M17_L10", "17", "10", "residencia"],
  ["M17_L11", "17", "11", "residencia"],
  ["M17_L12", "17", "12", "residencia"],
  ["M17_L15", "17", "15", "mixto"],
  ["M17_L16", "17", "16", "mixto"],
  ["M17_L17", "17", "17", "mixto"],
  ["M19_L2",  "19", "2",  "residencia"],
  ["M19_L3",  "19", "3",  "residencia"],
  ["M19_L4",  "19", "4",  "residencia"],
  ["M19_L5",  "19", "5",  "residencia"],
  ["M19_L6",  "19", "6",  "residencia"],
  ["M19_L7",  "19", "7",  "residencia"],
  ["M19_L8",  "19", "8",  "residencia"],
  ["M19_L11", "19", "11", "residencia"],
  ["M19_L12", "19", "12", "residencia"],
  ["M20_L6",  "20", "6",  "mixto"],
  ["M20_L7",  "20", "7",  "mixto"],
  ["M20_L8",  "20", "8",  "mixto"],
  ["M20_L9",  "20", "9",  "mixto"],
  ["M20_L11", "20", "11", "mixto"],
  ["M20_L12", "20", "12", "mixto"],
  ["M20_L13", "20", "13", "mixto"],
  ["M20_L14", "20", "14", "residencia"],
  ["M20_L15", "20", "15", "residencia"],
  ["M20_L16", "20", "16", "residencia"],
  ["M20_L17", "20", "17", "residencia"],
  ["M20_L18", "20", "18", "residencia"],
  ["M20_L19", "20", "19", "residencia"],
  ["M20_L20", "20", "20", "residencia"],
  ["M20_L21", "20", "21", "residencia"],
  ["M22_L2",  "22", "2",  "mixto"],
  ["M22_L3",  "22", "3",  "mixto"],
  ["M22_L4",  "22", "4",  "mixto"],
  ["M22_L5",  "22", "5",  "mixto"],
  ["M22_L6",  "22", "6",  "mixto"],
  ["M22_L7",  "22", "7",  "mixto"],
  ["M22_L8",  "22", "8",  "mixto"],
  ["M23_L1",  "23", "1",  "residencia"],
  ["M23_L2",  "23", "2",  "mixto"],
  ["M23_L4",  "23", "4",  "mixto"],
  ["M23_L5",  "23", "5",  "mixto"],
  ["M23_L6",  "23", "6",  "mixto"],
  ["M23_L7",  "23", "7",  "mixto"],
  ["M23_L9",  "23", "9",  "mixto"],
  ["M23_L10", "23", "10", "mixto"],
  ["M23_L11", "23", "11", "mixto"],
  ["M23_L12", "23", "12", "mixto"],
  ["M23_L13", "23", "13", "mixto"],
  ["M23_L14", "23", "14", "mixto"],
  ["M23_L15", "23", "15", "residencia"],
  ["M23_L16", "23", "16", "residencia"],
  ["M23_L17", "23", "17", "residencia"],
  ["M23_L18", "23", "18", "residencia"],
  ["M23_L19", "23", "19", "residencia"],
  ["M23_L20", "23", "20", "residencia"],
  ["M23_L21", "23", "21", "residencia"],
  ["M24_L5",  "24", "5",  "residencia"],
  ["M24_L6",  "24", "6",  "residencia"],
  ["M24_L9",  "24", "9",  "mixto"],
  ["M24_L10", "24", "10", "mixto"],
  ["M24_L11", "24", "11", "mixto"],
  ["M24_L12", "24", "12", "mixto"],
  ["M24_L13", "24", "13", "mixto"],
  ["M25_L2",  "25", "2",  "comercial"],
  ["M26_L5",  "26", "5",  "comercial"],
  ["M26_L6",  "26", "6",  "comercial"],
  ["M26_L7",  "26", "7",  "comercial"],
  ["M26_L8",  "26", "8",  "comercial"],
  ["M28_L1",  "28", "1",  "mixto"],
  ["M28_L2",  "28", "2",  "mixto"],
  ["M28_L3",  "28", "3",  "mixto"]
];

const rows = missing.map(([id, manzana, lote, uso]) => ({
  Proyecto: 'SAN LUIS CHICO',
  ID: id,
  Lote: lote,
  Manzana: manzana,
  Superficie: null,
  Estado: 'DISPONIBLE',
  Precio: null,
  Orientacion: null,
  Precio_financiado: null,
  Cuota: null,
  Uso: uso
}));

fetch(url + '?on_conflict=ID', {
  method: 'POST',
  headers: {
    'apikey': key,
    'Authorization': 'Bearer ' + key,
    'Content-Type': 'application/json',
    'Prefer': 'resolution=ignore-duplicates,return=representation'
  },
  body: JSON.stringify(rows)
})
.then(res => res.text().then(text => ({ status: res.status, text })))
.then(({status, text}) => {
  console.log('Status HTTP:', status);
  console.log('Insert exitoso. Filas afectadas:', JSON.parse(text).length);
})
.catch(err => {
  console.error('Error:', err);
});
