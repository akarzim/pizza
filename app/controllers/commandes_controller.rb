class CommandesController < ApplicationController
  # GET /commandes
  # GET /commandes.json
  def index
    @commandes = Commande.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commandes }
    end
  end

  # GET /commandes/1
  # GET /commandes/1.json
  def show
    @commande = Commande.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commande }
    end
  end

  # GET /commandes/new
  # GET /commandes/new.json
  def new
    @commande = Commande.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commande }
    end
  end

  # GET /commandes/1/edit
  def edit
    @commande = Commande.find(params[:id])
  end

  # POST /commandes
  # POST /commandes.json
  def create
    @commande = Commande.new(params[:commande])

    respond_to do |format|
      if @commande.save
        format.html { redirect_to @commande, notice: 'Commande was successfully created.' }
        format.json { render json: @commande, status: :created, location: @commande }
      else
        format.html { render action: "new" }
        format.json { render json: @commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commandes/1
  # PUT /commandes/1.json
  def update
    @commande = Commande.find(params[:id])

    respond_to do |format|
      if @commande.update_attributes(params[:commande])
        format.html { redirect_to @commande, notice: 'Commande was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commandes/1
  # DELETE /commandes/1.json
  def destroy
    @commande = Commande.find(params[:id])
    @commande.destroy

    respond_to do |format|
      format.html { redirect_to commandes_url }
      format.json { head :no_content }
    end
  end
end
