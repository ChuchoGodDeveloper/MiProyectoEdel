# config/initializers/check_db.rb
begin
  puts ">>> [check_db] Intentando conectar a la base de datos..."
  # Intenta una consulta simple para verificar la conexión
  ActiveRecord::Base.connection.execute("SELECT 1")
  puts ">>> [check_db] Conexión a la base de datos OK"
rescue => e
  puts ">>> [check_db] ERROR FATAL: No se pudo conectar a la base de datos"
  puts ">>> Mensaje: #{e.message}"
  puts ">>> Backtrace:"
  puts e.backtrace.join("\n")
  # Forzamos la salida para que el deploy falle y podamos ver esto en los logs
  raise e
end