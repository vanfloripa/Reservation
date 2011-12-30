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
    @reserve = Reserve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserve }
    end
  end

  # GET /reserves/new
  # GET /reserves/new.json
  def new
    @reserve = Reserve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserve }
    end
  end

  # GET /reserves/1/edit
  def edit
    @reserve = Reserve.find(params[:id])
  end

  # POST /reserves
  # POST /reserves.json
  def create
    @reserve = Reserve.new(params[:reserve])

    respond_to do |format|
      if @reserve.save
        format.html { redirect_to @reserve, notice: 'Reserve was successfully created.' }
        format.json { render json: @reserve, status: :created, location: @reserve }
      else
        format.html { render action: "new" }
        format.json { render json: @reserve.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reserves/1
  # PUT /reserves/1.json
  def update
    @reserve = Reserve.find(params[:id])

    respond_to do |format|
      if @reserve.update_attributes(params[:reserve])
        format.html { redirect_to @reserve, notice: 'Reserve was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @reserve.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserves/1
  # DELETE /reserves/1.json
  def destroy
    @reserve = Reserve.find(params[:id])
    @reserve.destroy

    respond_to do |format|
      format.html { redirect_to reserves_url }
      format.json { head :ok }
    end
  end
end
