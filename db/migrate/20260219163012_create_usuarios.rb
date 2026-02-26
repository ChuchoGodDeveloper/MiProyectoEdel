class CreateUsuarios < ActiveRecord::Migration[8.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :correo
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
