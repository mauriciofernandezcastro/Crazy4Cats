class CraziesController < ApplicationController
  before_action :set_crazy, only: %i[ show edit update destroy ]

  # GET /crazies or /crazies.json
  def index
    @crazies = Crazy.all
  end

  # GET /crazies/1 or /crazies/1.json
  def show
  end

  # GET /crazies/new
  def new
    @crazy = Crazy.new
  end

  # GET /crazies/1/edit
  def edit
  end

  # POST /crazies or /crazies.json
  def create
    @crazy = Crazy.new(crazy_params)

    respond_to do |format|
      if @crazy.save
        format.html { redirect_to crazy_url(@crazy), notice: "Crazy was successfully created." }
        format.json { render :show, status: :created, location: @crazy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crazy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crazies/1 or /crazies/1.json
  def update
    respond_to do |format|
      if @crazy.update(crazy_params)
        format.html { redirect_to crazy_url(@crazy), notice: "Crazy was successfully updated." }
        format.json { render :show, status: :ok, location: @crazy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crazy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crazies/1 or /crazies/1.json
  def destroy
    @crazy.destroy

    respond_to do |format|
      format.html { redirect_to crazies_url, notice: "Crazy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crazy
      @crazy = Crazy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crazy_params
      params.require(:crazy).permit(:name, :age)
    end
end
