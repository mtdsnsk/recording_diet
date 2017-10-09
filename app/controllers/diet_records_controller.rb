class DietRecordsController < ApplicationController
  before_action :set_diet_record, only: [:show, :edit, :update, :destroy]

  # GET /diet_records
  # GET /diet_records.json
  def index
    @diet_records = DietRecord.all
  end

  # GET /diet_records/1
  # GET /diet_records/1.json
  def show
  end

  # GET /diet_records/new
  def new
    @diet_record = DietRecord.new
  end

  # GET /diet_records/1/edit
  def edit
  end

  # POST /diet_records
  # POST /diet_records.json
  def create
    @diet_record = DietRecord.new(diet_record_params)

    respond_to do |format|
      if @diet_record.save
        format.html { redirect_to @diet_record, notice: 'Diet record was successfully created.' }
        format.json { render :show, status: :created, location: @diet_record }
      else
        format.html { render :new }
        format.json { render json: @diet_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diet_records/1
  # PATCH/PUT /diet_records/1.json
  def update
    respond_to do |format|
      if @diet_record.update(diet_record_params)
        format.html { redirect_to @diet_record, notice: 'Diet record was successfully updated.' }
        format.json { render :show, status: :ok, location: @diet_record }
      else
        format.html { render :edit }
        format.json { render json: @diet_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diet_records/1
  # DELETE /diet_records/1.json
  def destroy
    @diet_record.destroy
    respond_to do |format|
      format.html { redirect_to diet_records_url, notice: 'Diet record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet_record
      @diet_record = DietRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diet_record_params
      params.require(:diet_record).permit(:title, :author)
    end
end
