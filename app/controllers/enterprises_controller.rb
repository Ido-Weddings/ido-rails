class EnterprisesController < ApplicationController
  before_action :set_enterprise, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:edit, :update, :destroy]

  # GET /enterprises
  # GET /enterprises.json
  def index
    #@enterprises = Enterprise.all
    @enterprise = Enterprise.find current_enterprise.id
    @categories = @enterprise.categories
    @pictures = Picture.find_by_enterprise_id(current_enterprise.id)
    @picture = Picture.new
    #@picture = Picture.new enterprise_id: current_enterprise.id,
                            #category_id:
  end

  # GET /enterprises/1
  # GET /enterprises/1.json
  def show
  end

  def pick_image
  end

  # GET /enterprises/new
  def new
    @enterprise = Enterprise.new
  end

  # GET /enterprises/1/edit
  def edit

  end

  # POST /enterprises
  # POST /enterprises.json
  def create
    @enterprise = Enterprise.new(enterprise_params)

    respond_to do |format|
      if @enterprise.save
        format.html { redirect_to @enterprise, notice: 'Enterprise was successfully created.' }
        format.json { render :show, status: :created, location: @enterprise }
      else
        format.html { render :new }
        format.json { render json: @enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enterprises/1
  # PATCH/PUT /enterprises/1.json
  def update
    respond_to do |format|
      if @enterprise.update(enterprise_params)
        format.html { redirect_to @enterprise, notice: 'Enterprise was successfully updated.' }
        format.json { render :show, status: :ok, location: @enterprise }
      else
        format.html { render :edit }
        format.json { render json: @enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprises/1
  # DELETE /enterprises/1.json
  def destroy
    @enterprise.destroy
    respond_to do |format|
      format.html { redirect_to enterprises_url, notice: 'Enterprise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show_categories
		@category = Category.find(params[:id])
		render :json => @category.enterprises.to_json
	end

	def search_enterprise
		if params[:search]
	      @enterprise = Category.find(params[:id]).enterprises.search(params[:search])
	      render :json => @enterprise.to_json
	    else
	      @category = Category.find(params[:id])
	      render :json => @category.enterprises.to_json
	    end
	end

	def search_ranking_enterprises
		@user = User.find(params[:id_user])
		budget = @user.preferences.find(params[:id_category]).budget
		@enterprises = Category.find(params[:id_category]).enterprises.order(:rate).where("base_price <= ?", budget).reverse
		render :json => @enterprises.to_json
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enterprise
      @enterprise = Enterprise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enterprise_params
      params.require(:enterprise).permit(:name, :description, :capacity, :telephone, :cellphone, :base_price,
       :address, :email, :password, :password_confirmation)
    end

    def category_params
  		params.require(:category).permit(:name)
  	end
end