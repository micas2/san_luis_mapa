import 'dotenv/config';

const supabaseUrl = process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL;
const supabaseAnonKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  console.error('Error: Faltan variables de Supabase');
  console.log('VITE_SUPABASE_URL:', process.env.VITE_SUPABASE_URL ? '✓' : '✗');
  console.log('VITE_SUPABASE_ANON_KEY:', process.env.VITE_SUPABASE_ANON_KEY ? '✓' : '✗');
  process.exit(1);
}

console.log('URL:', supabaseUrl);

const { createClient } = await import('@supabase/supabase-js');
const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function keepAlive() {
  console.log('Consultando base de datos...');

  const { data, error } = await supabase
    .from('san_luis')
    .select('ID')
    .limit(1);

  if (error) {
    console.error('Error:', error.message);
    console.error('Details:', error);
    process.exit(1);
  }

  console.log('✓ Base de datos activa. Datos:', data);
}

keepAlive();