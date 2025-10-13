-- Script para cambiar el tipo de columna 'talla' de numérico a texto
-- Ejecutar en el SQL Editor de Supabase

-- Cambiar el tipo de dato de la columna talla
ALTER TABLE zapatillas 
ALTER COLUMN talla TYPE TEXT;

-- Verificar el cambio
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'zapatillas' 
AND column_name = 'talla';