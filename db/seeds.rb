# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creando 20 usuarios de prueba..."

Usuario.create!([
  { nombre: "Ana Rosa", apellidos: "Martínez Silva", telefono: "5512345678", correo: "ana.martinez@ejemplo.com", fecha_nacimiento: "1995-03-12" },
  { nombre: "Carlos Eduardo", apellidos: "Gómez Ruiz", telefono: "3311223344", correo: "carlos.gomez@ejemplo.com", fecha_nacimiento: "1988-07-25" },
  { nombre: "Sofía", apellidos: "Hernández Cruz", telefono: "8144556677", correo: "sofia.hernandez@ejemplo.com", fecha_nacimiento: "2000-11-05" },
  { nombre: "Luis Ángel", apellidos: "Díaz Morales", telefono: "5599001122", correo: "luis.diaz@ejemplo.com", fecha_nacimiento: "1992-01-30" },
  { nombre: "Valeria", apellidos: "Flores Reyes", telefono: "4422334455", correo: "valeria.flores@ejemplo.com", fecha_nacimiento: "1998-09-15" },
  { nombre: "José Miguel", apellidos: "López Santos", telefono: "5533445566", correo: "jose.lopez@ejemplo.com", fecha_nacimiento: "1990-12-10" },
  { nombre: "Camila", apellidos: "Ramírez Ortiz", telefono: "8122334455", correo: "camila.ramirez@ejemplo.com", fecha_nacimiento: "2001-04-20" },
  { nombre: "Miguel Arturo", apellidos: "Torres Mendoza", telefono: "3355667788", correo: "miguel.torres@ejemplo.com", fecha_nacimiento: "1985-08-08" },
  { nombre: "Andrea", apellidos: "Castro Vargas", telefono: "5566778899", correo: "andrea.castro@ejemplo.com", fecha_nacimiento: "1997-02-14" },
  { nombre: "Fernando", apellidos: "Ruiz Navarro", telefono: "4422113355", correo: "fernando.ruiz@ejemplo.com", fecha_nacimiento: "1993-06-18" },
  { nombre: "Mariana", apellidos: "Jiménez Peña", telefono: "5511223344", correo: "mariana.jimenez@ejemplo.com", fecha_nacimiento: "1996-12-05" },
  { nombre: "Diego", apellidos: "Medina Herrera", telefono: "3399887766", correo: "diego.medina@ejemplo.com", fecha_nacimiento: "1989-10-30" },
  { nombre: "Paula", apellidos: "Aguilar Soto", telefono: "8177665544", correo: "paula.aguilar@ejemplo.com", fecha_nacimiento: "1999-05-22" },
  { nombre: "Alejandro", apellidos: "Rojas Cabrera", telefono: "5544332211", correo: "alejandro.rojas@ejemplo.com", fecha_nacimiento: "1991-03-08" },
  { nombre: "Daniela", apellidos: "Vega Montes", telefono: "4455667788", correo: "daniela.vega@ejemplo.com", "fecha_nacimiento": "2002-01-15" },
  { nombre: "Roberto", apellidos: "Morales Luna", telefono: "5522334455", correo: "roberto.morales@ejemplo.com", fecha_nacimiento: "1987-09-25" },
  { nombre: "Natalia", apellidos: "Ortiz Ríos", telefono: "3344556677", correo: "natalia.ortiz@ejemplo.com", fecha_nacimiento: "1994-11-12" },
  { nombre: "Eduardo", apellidos: "Silva Garza", telefono: "8155667788", correo: "eduardo.silva@ejemplo.com", fecha_nacimiento: "1986-07-04" },
  { nombre: "Gabriela", apellidos: "Mendoza Pineda", telefono: "5588990011", correo: "gabriela.mendoza@ejemplo.com", fecha_nacimiento: "1998-08-19" },
  { nombre: "Javier", apellidos: "Cruz Valdés", telefono: "4488776655", correo: "javier.cruz@ejemplo.com", fecha_nacimiento: "1990-02-28" }
])

puts "¡20 usuarios creados con éxito!"