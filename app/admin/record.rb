ActiveAdmin.register Record do

  permit_params :matricula, :curp, :tipo_beca, :institucion, :primer_apellido,
                :segundo_apellido, :nombre, :genero, :nacionalidad, :dia, :mes, :anio, :edad, :poblacion,
                :municipio, :estado, :estado_civil, :procedencia, :oportunidades, :etnia, :discapacidad,
                :local_foraneo, :carrera, :programa, :periodo, :periodo_curso, :anio_curso, :monto, :prom_bach,
                :prom_carrera, :prom_ciclo, :area_conocimiento, :ingreso_hogar, :pers_hogar
  menu parent: 'Becarios', priority: 2, label: 'Registros'

  form builder: ActiveAdmin::FormBuilder do |f|
    f.inputs do
      f.input :matricula
      f.input :curp
    end
    f.submit
  end

  index do
    selectable_column
    id_column
    column :matricula
    column :curp
    column :tipo_beca
    column :primer_apellido
    column :segundo_apellido
    column :nombre
    column :genero
    column :nacionalidad
    column :dia
    column :mes
    column :año
    column :edad
    column :poblacion
    column :municipio
    column :estado
    column :estado_civil
    column :procedencia
    column :oportunidades
    column :etnia
    column :discapacidad
    column :local_foraneo
    column :carrera
    column :periodo_curso
    column :prom_carrera
    column :prom_ciclo
    column :ingreso_hogar
    column :pers_hogar
    actions
  end

  csv do
    column :id
    column :matricula
    column :tipo_beca
    column :institucion
    column :primer_apellido
    column :segundo_apellido
    column :nombre
    column :genero
    column :nacionalidad
    column :dia
    column :mes
    column :anio
    column :edad
    column :poblacion
    column :municipio
    column :estado
    column :estado_civil
    column :procedencia
    column :oportunidades
    column :etnia
    column :discapacidad
    column :local_foraneo
    column :carrera
    column :programa
    column :periodo
    column :periodo_curso
    column :anio_curso
    column :prom_bach
    column :monto
    column :prom_bach
    column :prom_carrera
    column :prom_ciclo
    column :area_conocimiento
    column :ingreso_hogar
    column :pers_hogar
  end

  filter :matricula
end
