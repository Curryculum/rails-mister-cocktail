class CocktailsController < ApplicationController
  # before_action :set_cocktail, only: [:show, :index]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktails = Cocktail.all
    @cocktail = Cocktail.find(params[:id])
    @ingredients = @cocktail.ingredients
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
