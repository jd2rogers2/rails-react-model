class OrderedProductsController < ApplicationController
  before_action :set_ordered_product, only: [:show, :edit, :update, :destroy]

  # GET /ordered_products
  # GET /ordered_products.json
  def index
    @ordered_products = OrderedProduct.all
  end

  # GET /ordered_products/1
  # GET /ordered_products/1.json
  def show
  end

  # GET /ordered_products/new
  def new
    @ordered_product = OrderedProduct.new
  end

  # GET /ordered_products/1/edit
  def edit
  end

  # POST /ordered_products
  # POST /ordered_products.json
  def create
    @ordered_product = OrderedProduct.new(ordered_product_params)

    respond_to do |format|
      if @ordered_product.save
        format.html { redirect_to @ordered_product, notice: 'Ordered product was successfully created.' }
        format.json { render :show, status: :created, location: @ordered_product }
      else
        format.html { render :new }
        format.json { render json: @ordered_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordered_products/1
  # PATCH/PUT /ordered_products/1.json
  def update
    respond_to do |format|
      if @ordered_product.update(ordered_product_params)
        format.html { redirect_to @ordered_product, notice: 'Ordered product was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordered_product }
      else
        format.html { render :edit }
        format.json { render json: @ordered_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordered_products/1
  # DELETE /ordered_products/1.json
  def destroy
    @ordered_product.destroy
    respond_to do |format|
      format.html { redirect_to ordered_products_url, notice: 'Ordered product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordered_product
      @ordered_product = OrderedProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordered_product_params
      params.require(:ordered_product).permit(:cart_id, :name, :price, :img)
    end
end
