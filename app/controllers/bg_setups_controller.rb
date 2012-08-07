class BgSetupsController < ApplicationController
  # GET /bg_setups
  # GET /bg_setups.json
  def index
    @bg_setups = BgSetup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bg_setups }
    end
  end

  # GET /bg_setups/1
  # GET /bg_setups/1.json
  def show
    @bg_setup = BgSetup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bg_setup }
    end
  end

  # GET /bg_setups/new
  # GET /bg_setups/new.json
  def new
    @bg_setup = BgSetup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bg_setup }
    end
  end

  # GET /bg_setups/1/edit
  def edit
    @bg_setup = BgSetup.find(params[:id])
  end

  # POST /bg_setups
  # POST /bg_setups.json
  def create
    @bg_setup = BgSetup.new(params[:bg_setup])

    respond_to do |format|
      if @bg_setup.save
        format.html { redirect_to @bg_setup, notice: 'Bg setup was successfully created.' }
        format.json { render json: @bg_setup, status: :created, location: @bg_setup }
      else
        format.html { render action: "new" }
        format.json { render json: @bg_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bg_setups/1
  # PUT /bg_setups/1.json
  def update
    @bg_setup = BgSetup.find(params[:id])

    respond_to do |format|
      if @bg_setup.update_attributes(params[:bg_setup])
        format.html { redirect_to @bg_setup, notice: 'Bg setup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bg_setup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bg_setups/1
  # DELETE /bg_setups/1.json
  def destroy
    @bg_setup = BgSetup.find(params[:id])
    @bg_setup.destroy

    respond_to do |format|
      format.html { redirect_to bg_setups_url }
      format.json { head :no_content }
    end
  end
end
