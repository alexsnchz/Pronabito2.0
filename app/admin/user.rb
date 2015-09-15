ActiveAdmin.register User do
  permit_params :curp, :tipo_beca, :institucion, :primer_apellido, :segundo_apellido, :nombre, :genero, :nacionalidad,
                :dia, :mes, :anio, :edad, :poblacion, :municipio, :estado, :estado_civil, :procedencia, :oportunidades,
                :etnia, :discapacidad, :local_foraneo, :carrera, :programa, :periodo, :periodo_curso, :anio_curso,
                :monto, :prom_bach, :prom_carrera, :prom_ciclo, :area_conocimiento, :ingreso_hogar, :pers_hogar
  menu parent: 'Acceso', priority: 2

  form builder: ActiveAdmin::FormBuilder do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :curp
      f.input :tipo_beca
      f.input :institucion
      f.input :primer_apellido
      f.input :segundo_apellido
      f.input :nombre
      f.input :genero
      f.input :nacionalidad
      f.input :dia
      f.input :mes
      f.input :anio
      f.input :edad
      f.input :poblacion
      f.input :municipio
      f.input :estado
      f.input :estado_civil
      f.input :procedencia
      f.input :oportunidades
      f.input :etnia
      f.input :discapacidad
      f.input :local_foraneo
      f.input :carrera
      f.input :programa
      f.input :periodo
      f.input :periodo_curso
      f.input :anio_curso
      f.input :monto
      f.input :prom_bach
      f.input :prom_carrera
      f.input :prom_ciclo
      f.input :area_conocimiento
      f.input :ingreso_hogar
      f.input :pers_hogar
    end
    f.submit
  end

  index do
    selectable_column
    id_column
    column :curp
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
    actions
  end
end