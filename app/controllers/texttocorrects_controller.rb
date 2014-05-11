class TexttocorrectsController < ApplicationController
  before_action :set_texttocorrect, only: [:show, :edit, :update, :destroy]

  # GET /texttocorrects
  # GET /texttocorrects.json
  def index
    @texttocorrects = Texttocorrect.all
  end

  # GET /texttocorrects/1
  # GET /texttocorrects/1.json
  def show
  end

  # GET /texttocorrects/new
  def new
    @texttocorrect = Texttocorrect.new
  end

  # GET /texttocorrects/1/edit
  def edit
  end

  # POST /texttocorrects
  # POST /texttocorrects.json
  def create
    @texttocorrect = Texttocorrect.new(texttocorrect_params)

    respond_to do |format|
      if @texttocorrect.save
        format.html { redirect_to @texttocorrect, notice: 'Texttocorrect was successfully created.' }
        format.json { render :show, status: :created, location: @texttocorrect }
      else
        format.html { render :new }
        format.json { render json: @texttocorrect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /texttocorrects/1
  # PATCH/PUT /texttocorrects/1.json
  def update
    respond_to do |format|
      if @texttocorrect.update(texttocorrect_params)
        format.html { redirect_to @texttocorrect, notice: 'Texttocorrect was successfully updated.' }
        format.json { render :show, status: :ok, location: @texttocorrect }
      else
        format.html { render :edit }
        format.json { render json: @texttocorrect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /texttocorrects/1
  # DELETE /texttocorrects/1.json
  def destroy
    @texttocorrect.destroy
    respond_to do |format|
      format.html { redirect_to texttocorrects_url, notice: 'Texttocorrect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_texttocorrect
      @texttocorrect = Texttocorrect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def texttocorrect_params
      params.require(:texttocorrect).permit(:language, :duedate, :description)
    end
end
