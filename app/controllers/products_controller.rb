class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  # Start: *TODO: deben autentificarse
  before_action :authenticate_user!, except: %i[index show]
  # End: *TODO:

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    # @product = Product.new
    # Start: *TODO: "Solamente el user actual crea producto"
    @product = current_user.products.build
    # End: *TODO:
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    # @product = Product.new(product_params)
    # Start: *TODO: "Solamente el user actual crea producto"
    @product = current_user.products.build(product_params)
    # End: *TODO:

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      # params.require(:product).permit(:user_id, :name, :description, :category_id, :price, :release_date, :link_to_website, :available)
      # Start: *TODO: "Se quita el parametro que se puede modificar: user_id"
      params.require(:product).permit(:name, :description, :category_id, :price, :release_date, :link_to_website, :available)
      # End: *TODO:
    end
end
