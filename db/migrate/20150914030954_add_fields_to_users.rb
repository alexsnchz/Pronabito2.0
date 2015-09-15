class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :curp, :string
    add_column :users, :tipo_beca, :string
    add_column :users, :institucion, :string
    add_column :users, :primer_apellido, :string
    add_column :users, :segundo_apellido, :string
    add_column :users, :nombre, :string
    add_column :users, :genero, :string
    add_column :users, :nacionalidad, :string
    add_column :users, :dia, :integer
    add_column :users, :mes, :integer
    add_column :users, :anio, :integer
    add_column :users, :edad, :integer
    add_column :users, :poblacion, :string
    add_column :users, :municipio, :string
    add_column :users, :estado, :string
    add_column :users, :estado_civil, :string
    add_column :users, :procedencia, :string
    add_column :users, :oportunidades, :string
    add_column :users, :etnia, :string
    add_column :users, :discapacidad, :string
    add_column :users, :local_foraneo, :string
    add_column :users, :carrera, :string
    add_column :users, :programa, :string
    add_column :users, :periodo, :string
    add_column :users, :periodo_curso, :integer
    add_column :users, :anio_curso, :integer
    add_column :users, :monto, :integer
    add_column :users, :prom_bach, :float
    add_column :users, :prom_carrera, :float
    add_column :users, :prom_ciclo, :float
    add_column :users, :area_conocimiento, :string
    add_column :users, :ingreso_hogar, :float
    add_column :users, :pers_hogar, :integer
  end
end
