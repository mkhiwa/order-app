class ProductsController < ApplicationController
 before_action :authenticate_user!
  http_basic_authenticate_with name: 'neyda', 
  password: 'ricardo', 
  except: [:show,:index,:new,:create]
 
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @products = Product.where(user: current_user) 
    
  end



  # GET /items/1
  # GET /items/1.json
  def show

  end

  # GET /items/new
  def new
    @product = Product.new(:user_id => @current_user)
  end

  # GET /items/1/edit
  def edit
    current_user.products.build
  end

  # POST /items
  # POST /items.json
  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    OrderMailer.order_email(@product).deliver
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_url, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        current_user.products.build
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:code, :description, :name, :status, :quantity, :price, :total, :paid, :balance, :user_id)
    end
end
