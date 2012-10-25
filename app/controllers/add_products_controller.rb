class AddProductsController < ApplicationController
  # GET /add_products
  # GET /add_products.json
  def index
    @add_products = AddProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_products }
    end
  end

  # GET /add_products/1
  # GET /add_products/1.json
  def show
    @add_product = AddProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_product }
    end
  end

  # GET /add_products/new
  # GET /add_products/new.json
  def new
    @add_product = AddProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_product }
    end
  end

  # GET /add_products/1/edit
  def edit
    @add_product = AddProduct.find(params[:id])
  end

  # POST /add_products
  # POST /add_products.json
  def create
    @add_product = AddProduct.new(params[:add_product])

    respond_to do |format|
      if @add_product.save
        format.html { redirect_to @add_product, notice: 'Add product was successfully created.' }
        format.json { render json: @add_product, status: :created, location: @add_product }
      else
        format.html { render action: "new" }
        format.json { render json: @add_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_products/1
  # PUT /add_products/1.json
  def update
    @add_product = AddProduct.find(params[:id])

    respond_to do |format|
      if @add_product.update_attributes(params[:add_product])
        format.html { redirect_to @add_product, notice: 'Add product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_products/1
  # DELETE /add_products/1.json
  def destroy
    @add_product = AddProduct.find(params[:id])
    @add_product.destroy

    respond_to do |format|
      format.html { redirect_to add_products_url }
      format.json { head :no_content }
    end
  end
end
