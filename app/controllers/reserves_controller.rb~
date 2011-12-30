class ReservesController < ApplicationController
  # GET /reserves
  # GET /reserves.json
  def index
    @reserves = Reserve.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reserves }
    end
  end

  # GET /reserves/1
  # GET /reserves/1.json
  def show
    @reserf = Reserve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserf }
    end
  end

  # GET /reserves/new
  # GET /reserves/new.json
  def new
    @reserf = Reserve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserf }
    end
  end

  # GET /reserves/1/edit
  def edit
    @reserf = Reserve.find(params[:id])
  end

  # POST /reserves
  # POST /reserves.json
  def create
    @reserf = Reserve.new(params[:reserf])

    respond_to do |format|
      if @reserf.save
        format.html { redirect_to @reserf, notice: 'Reserve was successfully created.' }
        format.json { render json: @reserf, status: :created, location: @reserf }
      else
        format.html { render action: "new" }
        format.json { render json: @reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reserves/1
  # PUT /reserves/1.json
  def update
    @reserf = Reserve.find(params[:id])

    respond_to do |format|
      if @reserf.update_attributes(params[:reserf])
        format.html { redirect_to @reserf, notice: 'Reserve was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserves/1
  # DELETE /reserves/1.json
  def destroy
    @reserf = Reserve.find(params[:id])
    @reserf.destroy

    respond_to do |format|
      format.html { redirect_to reserves_url }
      format.json { head :ok }
    end
  end
end
