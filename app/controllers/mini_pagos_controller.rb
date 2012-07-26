class MiniPagosController < ApplicationController
  # GET /mini_pagos
  # GET /mini_pagos.json
  def index
    @mini_pagos = MiniPago.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mini_pagos }
    end
  end

  # GET /mini_pagos/1
  # GET /mini_pagos/1.json
  def show
    @mini_pago = MiniPago.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mini_pago }
    end
  end

  # GET /mini_pagos/new
  # GET /mini_pagos/new.json
  def new
    @mini_pago = MiniPago.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mini_pago }
    end
  end

  # GET /mini_pagos/1/edit
  def edit
    @mini_pago = MiniPago.find(params[:id])
  end

  # POST /mini_pagos
  # POST /mini_pagos.json
  def create
    @mini_pago = MiniPago.new(params[:mini_pago])

    respond_to do |format|
      if @mini_pago.save
        format.html { redirect_to @mini_pago, notice: 'Mini pago was successfully created.' }
        format.json { render json: @mini_pago, status: :created, location: @mini_pago }
      else
        format.html { render action: "new" }
        format.json { render json: @mini_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mini_pagos/1
  # PUT /mini_pagos/1.json
  def update
    @mini_pago = MiniPago.find(params[:id])

    respond_to do |format|
      if @mini_pago.update_attributes(params[:mini_pago])
        format.html { redirect_to @mini_pago, notice: 'Mini pago was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mini_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_pagos/1
  # DELETE /mini_pagos/1.json
  def destroy
    @mini_pago = MiniPago.find(params[:id])
    @mini_pago.destroy

    respond_to do |format|
      format.html { redirect_to mini_pagos_url }
      format.json { head :no_content }
    end
  end
end
