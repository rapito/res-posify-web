class WaitersController < ApplicationController
  before_action :set_waiter, only: [:show, :edit, :update, :destroy]

  # GET /waiters
  # GET /waiters.json
  def index
    @waiters = Waiter.all
  end

  # GET /waiters/1
  # GET /waiters/1.json
  def show
  end

  # GET /waiters/new
  def new
    @waiter = Waiter.new
  end

  # GET /waiters/1/edit
  def edit
  end

  # POST /waiters
  # POST /waiters.json
  def create
    @waiter = Waiter.new(waiter_params)

    respond_to do |format|
      if @waiter.save
        format.html { redirect_to @waiter, notice: 'Waiter was successfully created.' }
        format.json { render :show, status: :created, location: @waiter }
      else
        format.html { render :new }
        format.json { render json: @waiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waiters/1
  # PATCH/PUT /waiters/1.json
  def update
    respond_to do |format|
      if @waiter.update(waiter_params)
        format.html { redirect_to @waiter, notice: 'Waiter was successfully updated.' }
        format.json { render :show, status: :ok, location: @waiter }
      else
        format.html { render :edit }
        format.json { render json: @waiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waiters/1
  # DELETE /waiters/1.json
  def destroy
    @waiter.destroy
    respond_to do |format|
      format.html { redirect_to waiters_url, notice: 'Waiter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiter
      @waiter = Waiter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waiter_params
      params.require(:waiter).permit(:name, :lastname)
    end
end
