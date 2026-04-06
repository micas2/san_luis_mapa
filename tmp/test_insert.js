const url = 'https://kyxmpbvgzewxhitnivnx.supabase.co/rest/v1/san_luis';
const key = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt5eG1wYnZnemV3eGhpdG5pdm54Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ0OTE2MTQsImV4cCI6MjA5MDA2NzYxNH0.vWgEzubR4UT-BVvBidTkQM-9M41li2j01qNIOcWfgSs';

const row = [{ Proyecto: 'SAN LUIS CHICO', ID: 'M4_L6', Lote: '6', Manzana: '4', Superficie: null, Estado: 'DISPONIBLE', Precio: null, Orientacion: null, Precio_financiado: null, Cuota: null, Uso: 'residencia' }];

fetch(url, {
  method: 'POST',
  headers: {
    'apikey': key,
    'Authorization': 'Bearer ' + key,
    'Content-Type': 'application/json',
    'Prefer': 'return=representation'
  },
  body: JSON.stringify(row)
})
.then(res => res.text().then(text => ({ status: res.status, text })))
.then(({status, text}) => {
  console.log('Status:', status);
  console.log('Response:', text);
})
.catch(err => {
  console.error('Error:', err);
});
