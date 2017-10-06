class SuplementsController < ApplicationController
  def index
    @suplement = Suplement.all
  end

  def new
    @suplement = Suplement.new
  end

  def create
    @suplement = Suplement.new(suplement_params)
    if @suplement.save
        redirect_to '/suplements'
      else
        redirect_to '/suplements/new'
      end
  end

  def show
    @suplement = Suplement.find(params[:id])
  end

  def edit
    @suplement = Suplement.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private

    def suplement_params
      params.require(:suplement).permit(:name,
                                        :number_of_units,
                                        :daily_dosage_in_units,
                                        :start_date,
                                        :end_date,
                                        :suplement_cost
                                        )
    end
end
