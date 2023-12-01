class CityDataController < ApplicationController
  before_action :set_city_datum, only: %i[ show edit update destroy ]

  # GET /city_data or /city_data.json
  def index
    @city_data = CityDatum.all
  end

  # GET /city_data/1 or /city_data/1.json
  def show
  end

  # GET /city_data/new
  def new
    @city_datum = CityDatum.new
  end

  # GET /city_data/1/edit
  def edit
  end

  # POST /city_data or /city_data.json
  def create
    @city_datum = CityDatum.new(city_datum_params)

    respond_to do |format|
      if @city_datum.save
        format.html { redirect_to city_datum_url(@city_datum), notice: "City datum was successfully created." }
        format.json { render :show, status: :created, location: @city_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @city_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_data/1 or /city_data/1.json
  def update
    respond_to do |format|
      if @city_datum.update(city_datum_params)
        format.html { redirect_to city_datum_url(@city_datum), notice: "City datum was successfully updated." }
        format.json { render :show, status: :ok, location: @city_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @city_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_data/1 or /city_data/1.json
  def destroy
    @city_datum.destroy

    respond_to do |format|
      format.html { redirect_to city_data_url, notice: "City datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_datum
      @city_datum = CityDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def city_datum_params
      params.require(:city_datum).permit(:cityName, :seasonalVariation, :externalFactors).merge(user_id: current_user.id)
    end
end
