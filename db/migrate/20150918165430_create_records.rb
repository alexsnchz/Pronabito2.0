class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :matricula
      t.string :curp
      t.string :tipo_beca
      t.string :institucion
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :nombre
      t.string :genero
      t.string :nacionalidad
      t.integer :dia
      t.integer :mes
      t.integer :año
      t.integer :edad
      t.string :poblacion
      t.string :municipio
      t.string :estado
      t.string :estado_civil
      t.string :procedencia
      t.string :oportunidades
      t.string :etnia
      t.string :discapacidad
      t.string :local_foraneo
      t.string :carrera
      t.string :programa
      t.string :periodo
      t.integer :periodo_curso
      t.integer :año_curso
      t.string :monto
      t.float :prom_bach
      t.float :prom_carrera
      t.float :prom_ciclo
      t.string :area_conocimiento
      t.float :ingreso_hogar
      t.integer :pers_hogar

      t.timestamps null: false
    end
  end
end
