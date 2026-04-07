import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

async function check() {
  const { data, error } = await supabase.from('san_luis').select('ID, Orientacion, Precio');
  if (error) {
    console.error('ERROR:', error);
    process.exit(1);
  }
  
  const missing = data.filter(l => !l.Orientacion || !l.Precio || l.Orientacion === '---' || l.Precio === '---');
  console.log('Total lots:', data.length);
  console.log('Lots with missing Orientacion/Precio:', missing.length);
  console.log('FALTANTES:', JSON.stringify(missing.map(m => m.ID)));
}

check();
