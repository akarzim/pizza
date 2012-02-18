class PizzapartiesController < ApplicationController
  # GET /pizzaparties
  # GET /pizzaparties.json
  def index
    @pizzaparties = Pizzaparty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pizzaparties }
    end
  end

  # GET /pizzaparties/1
  # GET /pizzaparties/1.json
  def show
    @pizzaparty = Pizzaparty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pizzaparty }
    end
  end

  # GET /pizzaparties/new
  # GET /pizzaparties/new.json
  def new
    @pizzaparty = Pizzaparty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pizzaparty }
    end
  end

  # GET /pizzaparties/1/edit
  def edit
    @pizzaparty = Pizzaparty.find(params[:id])
  end

  # POST /pizzaparties
  # POST /pizzaparties.json
  def create
    @pizzaparty = Pizzaparty.new(params[:pizzaparty])

    respond_to do |format|
      if @pizzaparty.save
        format.html { redirect_to @pizzaparty, notice: 'Pizzaparty was successfully created.' }
        format.json { render json: @pizzaparty, status: :created, location: @pizzaparty }
      else
        format.html { render action: "new" }
        format.json { render json: @pizzaparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pizzaparties/1
  # PUT /pizzaparties/1.json
  def update
    @pizzaparty = Pizzaparty.find(params[:id])

    respond_to do |format|
      if @pizzaparty.update_attributes(params[:pizzaparty])
        format.html { redirect_to @pizzaparty, notice: 'Pizzaparty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pizzaparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzaparties/1
  # DELETE /pizzaparties/1.json
  def destroy
    @pizzaparty = Pizzaparty.find(params[:id])
    @pizzaparty.destroy

    respond_to do |format|
      format.html { redirect_to pizzaparties_url }
      format.json { head :no_content }
    end
  end
end
