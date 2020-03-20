class DataFormsController < ApplicationController
  before_action :set_data_form, only: [:show, :edit, :update, :destroy]

  # GET /data_forms
  # GET /data_forms.json
  def index
    @data_forms = DataForm.all
  end

  # GET /data_forms/1
  # GET /data_forms/1.json
  def show
  end

  # GET /data_forms/new
  def new
    @data_form = DataForm.new
  end

  # GET /data_forms/1/edit
  def edit
  end

  # POST /data_forms
  # POST /data_forms.json
  def create
    @data_form = DataForm.new(data_form_params)

    respond_to do |format|
      if @data_form.save
        format.html { redirect_to @data_form, notice: 'Data form was successfully created.' }
        format.json { render :show, status: :created, location: @data_form }
      else
        format.html { render :new }
        format.json { render json: @data_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_forms/1
  # PATCH/PUT /data_forms/1.json
  def update
    respond_to do |format|
      if @data_form.update(data_form_params)
        format.html { redirect_to @data_form, notice: 'Data form was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_form }
      else
        format.html { render :edit }
        format.json { render json: @data_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_forms/1
  # DELETE /data_forms/1.json
  def destroy
    @data_form.destroy
    respond_to do |format|
      format.html { redirect_to data_forms_url, notice: 'Data form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_form
      @data_form = DataForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_form_params
      params.fetch(:data_form, {})
    end
end
