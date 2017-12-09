class BenefitTypesController < ApplicationController
  before_action :set_benefit_type, only: [:show, :edit, :update, :destroy]

  # GET /benefit_types
  # GET /benefit_types.json
  def index
    @benefit_types = BenefitType.all
  end

  # GET /benefit_types/1
  # GET /benefit_types/1.json
  def show
  end

  # GET /benefit_types/new
  def new
    @benefit_type = BenefitType.new
  end

  # GET /benefit_types/1/edit
  def edit
  end

  # POST /benefit_types
  # POST /benefit_types.json
  def create
    @benefit_type = BenefitType.new(benefit_type_params)

    respond_to do |format|
      if @benefit_type.save
        format.html { redirect_to @benefit_type, notice: 'Benefit type was successfully created.' }
        format.json { render :show, status: :created, location: @benefit_type }
      else
        format.html { render :new }
        format.json { render json: @benefit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benefit_types/1
  # PATCH/PUT /benefit_types/1.json
  def update
    respond_to do |format|
      if @benefit_type.update(benefit_type_params)
        format.html { redirect_to @benefit_type, notice: 'Benefit type was successfully updated.' }
        format.json { render :show, status: :ok, location: @benefit_type }
      else
        format.html { render :edit }
        format.json { render json: @benefit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefit_types/1
  # DELETE /benefit_types/1.json
  def destroy
    @benefit_type.destroy
    respond_to do |format|
      format.html { redirect_to benefit_types_url, notice: 'Benefit type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefit_type
      @benefit_type = BenefitType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def benefit_type_params
      params.require(:benefit_type).permit(:type_name)
    end
end
