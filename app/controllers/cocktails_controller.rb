class CocktailsController < ApplicationController


  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
  end


  private

  def params_cocktail
    params.require(:cocktail).permit(:name, :ingredient, :dose)
  end
end
