class PizzsController < ApplicationController
  before_filter :require_login

  # GET /pizzs
  # GET /pizzs.json
  def index
    @pizzs = Pizz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pizzs }
    end
  end

  # GET /pizzs/1
  # GET /pizzs/1.json
  def show
    @pizz = Pizz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pizz }
    end
  end

  # GET /pizzs/new
  # GET /pizzs/new.json
  def new
    @pizz = Pizz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pizz }
    end
  end

  # GET /pizzs/1/edit
  def edit
    @pizz = Pizz.find(params[:id])
  end

  # POST /pizzs
  # POST /pizzs.json
  def create
    @pizz = Pizz.new(params[:pizz])

    respond_to do |format|
      if @pizz.save
        format.html { redirect_to @pizz, notice: 'Pizz was successfully created.' }
        format.json { render json: @pizz, status: :created, location: @pizz }
      else
        format.html { render action: "new" }
        format.json { render json: @pizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pizzs/1
  # PUT /pizzs/1.json
  def update
    @pizz = Pizz.find(params[:id])

    respond_to do |format|
      if @pizz.update_attributes(params[:pizz])
        format.html { redirect_to @pizz, notice: 'Pizz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzs/1
  # DELETE /pizzs/1.json
  def destroy
    @pizz = Pizz.find(params[:id])
    @pizz.destroy

    respond_to do |format|
      format.html { redirect_to pizzs_url }
      format.json { head :no_content }
    end
  end
end
