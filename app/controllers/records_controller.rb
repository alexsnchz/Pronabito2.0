class RecordsController < ApplicationController
  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Solicitud guardada'}
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  private

  def record_params
    params.require(:record).permit(:matricula, :curp, :tipo_beca, :institucion, :primer_apellido,
                                   :segundo_apellido, :nombre, :genero, :nacionalidad, :dia, :mes, :año, :edad,
                                   :poblacion, :municipio, :estado, :estado_civil, :procedencia, :oportunidades,
                                   :etnia, :discapacidad, :local_foraneo, :carrera, :programa, :periodo,
                                   :periodo_curso, :año_curso, :monto, :prom_bach, :prom_carrera, :prom_ciclo,
                                   :area_conocimiento, :ingreso_hogar, :pers_hogar)
  end
end
