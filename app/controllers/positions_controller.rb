class PositionsController < ApplicationController
  before_action :set_position, only: %i[ show edit update destroy ]

  # Role permissions
  before_action :authenticate_user!
  before_action except: %i[ index show application delete_application ] do
    authorize_request(["admin"])
  end

  # GET /positions or /positions.json
  def index
    @positions = Position.all
    @new_applications = Application.where(new: true).count
  end

  # GET /positions/1 or /positions/1.json
  def show
  end

  # GET /positions/new
  def new
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit
  end

  # POST /positions or /positions.json
  def create
    @position = Position.new(position_params)

    respond_to do |format|
      if @position.save
        format.html { redirect_to position_url(@position), notice: "Job position was successfully created." }
        format.json { render :show, status: :created, location: @position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positions/1 or /positions/1.json
  def update
    respond_to do |format|
      if @position.update(position_params)
        format.html { redirect_to position_url(@position), notice: "Job position was successfully updated." }
        format.json { render :show, status: :ok, location: @position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positions/1 or /positions/1.json
  def destroy
    @position.destroy

    respond_to do |format|
      format.html { redirect_to positions_url, notice: "Job position was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # POST application
  def application
    @application = current_user.applications.new(position_id: params[:id])

    respond_to do |format|
      if @application.save
        format.html { redirect_to position_path(@application), notice: "Job application received." }
        format.json { redirect_to position_path(format: :json), status: :created, location: @application }
      else
        format.html { redirect_to position_path, flash: { error: @application.errors.full_messages }}
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE application
  def delete_application
    @application = Application.find_by(position_id: params[:id], user_id: current_user.id)
    @application.destroy

    respond_to do |format|
      format.html { redirect_to position_path, notice: "Job application deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def position_params
      params.require(:position).permit(:title, :info, :available)
    end
end
