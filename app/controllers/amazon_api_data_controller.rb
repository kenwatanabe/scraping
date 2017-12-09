class AmazonApiDataController < ApplicationController
  before_action :set_amazon_api_datum, only: [:show, :edit, :update, :destroy]

  # GET /amazon_api_data
  # GET /amazon_api_data.json
  def index
    @amazon_api_data = AmazonApiDatum.all
  end

  # GET /amazon_api_data/1
  # GET /amazon_api_data/1.json
  def show
  end

  # GET /amazon_api_data/new
  def new
    @amazon_api_datum = AmazonApiDatum.new
  end

  # GET /amazon_api_data/1/edit
  def edit
  end

  # POST /amazon_api_data
  # POST /amazon_api_data.json
  def create
    @amazon_api_datum = AmazonApiDatum.new(amazon_api_datum_params)

    respond_to do |format|
      if @amazon_api_datum.save
        format.html { redirect_to @amazon_api_datum, notice: 'Amazon api datum was successfully created.' }
        format.json { render :show, status: :created, location: @amazon_api_datum }
      else
        format.html { render :new }
        format.json { render json: @amazon_api_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amazon_api_data/1
  # PATCH/PUT /amazon_api_data/1.json
  def update
    respond_to do |format|
      if @amazon_api_datum.update(amazon_api_datum_params)
        format.html { redirect_to @amazon_api_datum, notice: 'Amazon api datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @amazon_api_datum }
      else
        format.html { render :edit }
        format.json { render json: @amazon_api_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amazon_api_data/1
  # DELETE /amazon_api_data/1.json
  def destroy
    @amazon_api_datum.destroy
    respond_to do |format|
      format.html { redirect_to amazon_api_data_url, notice: 'Amazon api datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amazon_api_datum
      @amazon_api_datum = AmazonApiDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amazon_api_datum_params
      params.require(:amazon_api_datum).permit(:id_type, :item_id, :main_image_url)
    end
end
