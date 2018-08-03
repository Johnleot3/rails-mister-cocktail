class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def destroy
    dose_to_delete = Dose.find(params[:id])
    @cocktail = dose_to_delete.cocktail
    Dose.delete(dose_to_delete)
    redirect_to cocktail_path(@cocktail)
  end
end

