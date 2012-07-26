class TbViaController < ApplicationController
  # GET /tb_via
  # GET /tb_via.json
  def index
    @tb_via = TbVium.find(:all, :order => 'id_via')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tb_via }
    end
  end

  # GET /tb_via/1
  # GET /tb_via/1.json
  def show
    @tb_vium = TbVium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tb_vium }
    end
  end

  # GET /tb_via/new
  # GET /tb_via/new.json
  def new
    @tb_vium = TbVium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tb_vium }
    end
  end

  # GET /tb_via/1/edit
  def edit
    @tb_vium = TbVium.find(params[:id])
  end

  # POST /tb_via
  # POST /tb_via.json
  def create
    @tb_vium = TbVium.new(params[:tb_vium])

    respond_to do |format|
      if @tb_vium.save
        format.html { redirect_to @tb_vium, notice: 'Tb vium was successfully created.' }
        format.json { render json: @tb_vium, status: :created, location: @tb_vium }
      else
        format.html { render action: "new" }
        format.json { render json: @tb_vium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tb_via/1
  # PUT /tb_via/1.json
  def update
    @tb_vium = TbVium.find(params[:id])

    respond_to do |format|
      if @tb_vium.update_attributes(params[:tb_vium])
        format.html { redirect_to @tb_vium, notice: 'Tb vium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tb_vium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_via/1
  # DELETE /tb_via/1.json
  def destroy
    @tb_vium = TbVium.find(params[:id])
    @tb_vium.destroy

    respond_to do |format|
      format.html { redirect_to tb_via_url }
      format.json { head :no_content }
    end
  end
end
